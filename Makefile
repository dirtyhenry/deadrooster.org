install:
	bundle config github.com ${GITHUB_TOKEN}
	bundle install
	git submodule update --init --remote --merge
	yarn install

fetch-articles:
	git submodule update --init --remote --merge

run: package-js
	bundle exec jekyll serve

link-local:
	rm -rf _posts
	ln -s ../dr-articles/ _posts

unlink-local:
	rm -rf _posts
	git submodule update --init --remote --merge

build:
	bundle exec jekyll build

clean:
	rm -rf .jekyll-cache/
	rm -rf _site/
	rm -rf node_modules

lint:
	bundle exec rubocop

lintfix:
	bundle exec rubocop -a

run-legacy-mysql:
	docker-compose -f stack.yml up

package-js:
	yarn run webpack