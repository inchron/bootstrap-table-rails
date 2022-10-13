# Bootstrap::Table::Rails

bootstrap-table-rails provides the bootstrap-table plugin as a Rails engine to use it within the asset pipeline.

Original Git source - https://github.com/wenzhixin/bootstrap-table/
## Installation

Add this to your Gemfile:

    $ gem cytoscape-js-rails

and run `bundle install`.

## Usage

In your `application.js`, include the following:

```js
//= require bootstrap-table/bootstrap-table
```

In your `application.css`, include the following:

```css
/*
 *= require bootstrap-table/bootstrap-table
 */
 ```

## Examples

See the [demo page](http://bootstrap-table.wenzhixin.net.cn) for examples how to use the plugin

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Update Assets

Execute `bin/update` to update the assets and the version of the gem.
Then push your changes to github and create a release tag.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
