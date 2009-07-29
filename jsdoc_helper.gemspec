# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jsdoc_helper}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pete Gadomski"]
  s.date = %q{2009-07-29}
  s.default_executable = %q{jsdoc_helper}
  s.description = %q{Rake tasks for jsdoc-toolkit, a Javascript documentation generator.

jsdoc_helper includes:
* jsdoc-toolkit v2.1.0
  * jsdoc-toolkit is an application, written in JavaScript, for automatically generating template-formatted, multi-page HTML (or XML, JSON, or any other text-based) documentation from commented JavaScript source code
  * learn more at http://code.google.com/p/jsdoc-toolkit
* rake tasks to generate your jsdoc}
  s.email = %q{pete.gadomski@gmail.com}
  s.executables = ["jsdoc_helper"]
  s.extra_rdoc_files = ["History.txt", "README.rdoc", "bin/jsdoc_helper"]
  s.files = [".DS_Store", "History.txt", "README.rdoc", "Rakefile", "bin/jsdoc_helper", "ext/.DS_Store", "ext/jsdoc-toolkit/.DS_Store", "ext/jsdoc-toolkit/README.txt", "ext/jsdoc-toolkit/app/frame.js", "ext/jsdoc-toolkit/app/frame/Chain.js", "ext/jsdoc-toolkit/app/frame/Dumper.js", "ext/jsdoc-toolkit/app/frame/Hash.js", "ext/jsdoc-toolkit/app/frame/Link.js", "ext/jsdoc-toolkit/app/frame/Namespace.js", "ext/jsdoc-toolkit/app/frame/Opt.js", "ext/jsdoc-toolkit/app/frame/Reflection.js", "ext/jsdoc-toolkit/app/frame/String.js", "ext/jsdoc-toolkit/app/frame/Testrun.js", "ext/jsdoc-toolkit/app/handlers/FOODOC.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC/DomReader.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC/XMLDoc.js", "ext/jsdoc-toolkit/app/handlers/XMLDOC/XMLParse.js", "ext/jsdoc-toolkit/app/lib/JSDOC.js", "ext/jsdoc-toolkit/app/lib/JSDOC/DocComment.js", "ext/jsdoc-toolkit/app/lib/JSDOC/DocTag.js", "ext/jsdoc-toolkit/app/lib/JSDOC/JsDoc.js", "ext/jsdoc-toolkit/app/lib/JSDOC/JsPlate.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Lang.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Parser.js", "ext/jsdoc-toolkit/app/lib/JSDOC/PluginManager.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Symbol.js", "ext/jsdoc-toolkit/app/lib/JSDOC/SymbolSet.js", "ext/jsdoc-toolkit/app/lib/JSDOC/TextStream.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Token.js", "ext/jsdoc-toolkit/app/lib/JSDOC/TokenReader.js", "ext/jsdoc-toolkit/app/lib/JSDOC/TokenStream.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Util.js", "ext/jsdoc-toolkit/app/lib/JSDOC/Walker.js", "ext/jsdoc-toolkit/app/main.js", "ext/jsdoc-toolkit/app/plugins/commentSrcJson.js", "ext/jsdoc-toolkit/app/plugins/frameworkPrototype.js", "ext/jsdoc-toolkit/app/plugins/functionCall.js", "ext/jsdoc-toolkit/app/plugins/publishSrcHilite.js", "ext/jsdoc-toolkit/app/plugins/symbolLink.js", "ext/jsdoc-toolkit/app/plugins/tagParamConfig.js", "ext/jsdoc-toolkit/app/plugins/tagSynonyms.js", "ext/jsdoc-toolkit/app/run.js", "ext/jsdoc-toolkit/app/t/TestDoc.js", "ext/jsdoc-toolkit/app/t/runner.js", "ext/jsdoc-toolkit/app/test.js", "ext/jsdoc-toolkit/app/test/addon.js", "ext/jsdoc-toolkit/app/test/anon_inner.js", "ext/jsdoc-toolkit/app/test/augments.js", "ext/jsdoc-toolkit/app/test/augments2.js", "ext/jsdoc-toolkit/app/test/borrows.js", "ext/jsdoc-toolkit/app/test/borrows2.js", "ext/jsdoc-toolkit/app/test/config.js", "ext/jsdoc-toolkit/app/test/constructs.js", "ext/jsdoc-toolkit/app/test/encoding.js", "ext/jsdoc-toolkit/app/test/encoding_other.js", "ext/jsdoc-toolkit/app/test/event.js", "ext/jsdoc-toolkit/app/test/functions_anon.js", "ext/jsdoc-toolkit/app/test/functions_nested.js", "ext/jsdoc-toolkit/app/test/global.js", "ext/jsdoc-toolkit/app/test/globals.js", "ext/jsdoc-toolkit/app/test/ignore.js", "ext/jsdoc-toolkit/app/test/inner.js", "ext/jsdoc-toolkit/app/test/jsdoc_test.js", "ext/jsdoc-toolkit/app/test/lend.js", "ext/jsdoc-toolkit/app/test/memberof.js", "ext/jsdoc-toolkit/app/test/memberof_constructor.js", "ext/jsdoc-toolkit/app/test/name.js", "ext/jsdoc-toolkit/app/test/namespace_nested.js", "ext/jsdoc-toolkit/app/test/nocode.js", "ext/jsdoc-toolkit/app/test/oblit_anon.js", "ext/jsdoc-toolkit/app/test/overview.js", "ext/jsdoc-toolkit/app/test/param_inline.js", "ext/jsdoc-toolkit/app/test/params_optional.js", "ext/jsdoc-toolkit/app/test/prototype.js", "ext/jsdoc-toolkit/app/test/prototype_nested.js", "ext/jsdoc-toolkit/app/test/prototype_oblit.js", "ext/jsdoc-toolkit/app/test/prototype_oblit_constructor.js", "ext/jsdoc-toolkit/app/test/public.js", "ext/jsdoc-toolkit/app/test/shared.js", "ext/jsdoc-toolkit/app/test/shared2.js", "ext/jsdoc-toolkit/app/test/shortcuts.js", "ext/jsdoc-toolkit/app/test/static_this.js", "ext/jsdoc-toolkit/app/test/synonyms.js", "ext/jsdoc-toolkit/app/test/tosource.js", "ext/jsdoc-toolkit/app/test/variable_redefine.js", "ext/jsdoc-toolkit/changes.txt", "ext/jsdoc-toolkit/conf/sample.conf", "ext/jsdoc-toolkit/java/.DS_Store", "ext/jsdoc-toolkit/java/build.xml", "ext/jsdoc-toolkit/java/build_1.4.xml", "ext/jsdoc-toolkit/java/classes/js.jar", "ext/jsdoc-toolkit/java/src/JsDebugRun.java", "ext/jsdoc-toolkit/java/src/JsRun.java", "ext/jsdoc-toolkit/jsdebug.jar", "ext/jsdoc-toolkit/jsrun.jar", "ext/jsdoc-toolkit/out/jsdoc/files.html", "ext/jsdoc-toolkit/out/jsdoc/index.html", "ext/jsdoc-toolkit/out/jsdoc/symbols/_global_.html", "ext/jsdoc-toolkit/out/jsdoc/symbols/src/lib_test.js.html", "ext/jsdoc-toolkit/templates/jsdoc/allclasses.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/allfiles.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/class.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/index.tmpl", "ext/jsdoc-toolkit/templates/jsdoc/publish.js", "ext/jsdoc-toolkit/templates/jsdoc/static/default.css", "ext/jsdoc-toolkit/templates/jsdoc/static/header.html", "ext/jsdoc-toolkit/templates/jsdoc/static/index.html", "ext/jsdoc-toolkit/templates/jsdoc/symbol.tmpl", "features/doing_rake_jsdoc.feature", "features/step_definitions/jsdoc_helper_steps.rb", "features/support/env.rb", "features/support/file_helper.rb", "features/writing_the_rakefile.feature", "jsdoc_helper-0.0.1.gem", "jsdoc_helper.gemspec", "lib/jsdoc_helper.rb", "lib/jsdoc_helper/rake/task.rb", "lib/jsdoc_helper/rake/task/runner.rb", "spec/jsdoc_helper/jsdoc_helper_spec.rb", "spec/jsdoc_helper/rake/task/runner_spec.rb", "spec/jsdoc_helper/support/file_helper_spec.rb", "spec/spec_helper.rb", "test/.DS_Store", "test/ext/.DS_Store", "test/ext/jsdoc-toolkit/.DS_Store", "test/ext/jsdoc-toolkit/README.txt", "test/ext/jsdoc-toolkit/app/frame.js", "test/ext/jsdoc-toolkit/app/frame/Chain.js", "test/ext/jsdoc-toolkit/app/frame/Dumper.js", "test/ext/jsdoc-toolkit/app/frame/Hash.js", "test/ext/jsdoc-toolkit/app/frame/Link.js", "test/ext/jsdoc-toolkit/app/frame/Namespace.js", "test/ext/jsdoc-toolkit/app/frame/Opt.js", "test/ext/jsdoc-toolkit/app/frame/Reflection.js", "test/ext/jsdoc-toolkit/app/frame/String.js", "test/ext/jsdoc-toolkit/app/frame/Testrun.js", "test/ext/jsdoc-toolkit/app/handlers/FOODOC.js", "test/ext/jsdoc-toolkit/app/handlers/XMLDOC.js", "test/ext/jsdoc-toolkit/app/handlers/XMLDOC/DomReader.js", "test/ext/jsdoc-toolkit/app/handlers/XMLDOC/XMLDoc.js", "test/ext/jsdoc-toolkit/app/handlers/XMLDOC/XMLParse.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/DocComment.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/DocTag.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/JsDoc.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/JsPlate.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/Lang.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/Parser.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/PluginManager.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/Symbol.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/SymbolSet.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/TextStream.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/Token.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/TokenReader.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/TokenStream.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/Util.js", "test/ext/jsdoc-toolkit/app/lib/JSDOC/Walker.js", "test/ext/jsdoc-toolkit/app/main.js", "test/ext/jsdoc-toolkit/app/plugins/commentSrcJson.js", "test/ext/jsdoc-toolkit/app/plugins/frameworkPrototype.js", "test/ext/jsdoc-toolkit/app/plugins/functionCall.js", "test/ext/jsdoc-toolkit/app/plugins/publishSrcHilite.js", "test/ext/jsdoc-toolkit/app/plugins/symbolLink.js", "test/ext/jsdoc-toolkit/app/plugins/tagParamConfig.js", "test/ext/jsdoc-toolkit/app/plugins/tagSynonyms.js", "test/ext/jsdoc-toolkit/app/run.js", "test/ext/jsdoc-toolkit/app/t/TestDoc.js", "test/ext/jsdoc-toolkit/app/t/runner.js", "test/ext/jsdoc-toolkit/app/test.js", "test/ext/jsdoc-toolkit/app/test/addon.js", "test/ext/jsdoc-toolkit/app/test/anon_inner.js", "test/ext/jsdoc-toolkit/app/test/augments.js", "test/ext/jsdoc-toolkit/app/test/augments2.js", "test/ext/jsdoc-toolkit/app/test/borrows.js", "test/ext/jsdoc-toolkit/app/test/borrows2.js", "test/ext/jsdoc-toolkit/app/test/config.js", "test/ext/jsdoc-toolkit/app/test/constructs.js", "test/ext/jsdoc-toolkit/app/test/encoding.js", "test/ext/jsdoc-toolkit/app/test/encoding_other.js", "test/ext/jsdoc-toolkit/app/test/event.js", "test/ext/jsdoc-toolkit/app/test/functions_anon.js", "test/ext/jsdoc-toolkit/app/test/functions_nested.js", "test/ext/jsdoc-toolkit/app/test/global.js", "test/ext/jsdoc-toolkit/app/test/globals.js", "test/ext/jsdoc-toolkit/app/test/ignore.js", "test/ext/jsdoc-toolkit/app/test/inner.js", "test/ext/jsdoc-toolkit/app/test/jsdoc_test.js", "test/ext/jsdoc-toolkit/app/test/lend.js", "test/ext/jsdoc-toolkit/app/test/memberof.js", "test/ext/jsdoc-toolkit/app/test/memberof_constructor.js", "test/ext/jsdoc-toolkit/app/test/name.js", "test/ext/jsdoc-toolkit/app/test/namespace_nested.js", "test/ext/jsdoc-toolkit/app/test/nocode.js", "test/ext/jsdoc-toolkit/app/test/oblit_anon.js", "test/ext/jsdoc-toolkit/app/test/overview.js", "test/ext/jsdoc-toolkit/app/test/param_inline.js", "test/ext/jsdoc-toolkit/app/test/params_optional.js", "test/ext/jsdoc-toolkit/app/test/prototype.js", "test/ext/jsdoc-toolkit/app/test/prototype_nested.js", "test/ext/jsdoc-toolkit/app/test/prototype_oblit.js", "test/ext/jsdoc-toolkit/app/test/prototype_oblit_constructor.js", "test/ext/jsdoc-toolkit/app/test/public.js", "test/ext/jsdoc-toolkit/app/test/shared.js", "test/ext/jsdoc-toolkit/app/test/shared2.js", "test/ext/jsdoc-toolkit/app/test/shortcuts.js", "test/ext/jsdoc-toolkit/app/test/static_this.js", "test/ext/jsdoc-toolkit/app/test/synonyms.js", "test/ext/jsdoc-toolkit/app/test/tosource.js", "test/ext/jsdoc-toolkit/app/test/variable_redefine.js", "test/ext/jsdoc-toolkit/changes.txt", "test/ext/jsdoc-toolkit/conf/sample.conf", "test/ext/jsdoc-toolkit/java/.DS_Store", "test/ext/jsdoc-toolkit/java/build.xml", "test/ext/jsdoc-toolkit/java/build_1.4.xml", "test/ext/jsdoc-toolkit/java/classes/js.jar", "test/ext/jsdoc-toolkit/java/src/JsDebugRun.java", "test/ext/jsdoc-toolkit/java/src/JsRun.java", "test/ext/jsdoc-toolkit/jsdebug.jar", "test/ext/jsdoc-toolkit/jsrun.jar", "test/ext/jsdoc-toolkit/templates/jsdoc/allclasses.tmpl", "test/ext/jsdoc-toolkit/templates/jsdoc/allfiles.tmpl", "test/ext/jsdoc-toolkit/templates/jsdoc/class.tmpl", "test/ext/jsdoc-toolkit/templates/jsdoc/index.tmpl", "test/ext/jsdoc-toolkit/templates/jsdoc/publish.js", "test/ext/jsdoc-toolkit/templates/jsdoc/static/default.css", "test/ext/jsdoc-toolkit/templates/jsdoc/static/header.html", "test/ext/jsdoc-toolkit/templates/jsdoc/static/index.html", "test/ext/jsdoc-toolkit/templates/jsdoc/symbol.tmpl", "test/lib/test1.js", "test/lib/test2.js"]
  s.homepage = %q{http://github.com/quentonc/jsdoc_helper/tree/master}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{jsdoc_helper}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Rake tasks for jsdoc-toolkit, a Javascript documentation generator}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.5.1"])
    else
      s.add_dependency(%q<bones>, [">= 2.5.1"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.5.1"])
  end
end
