<?php

/** @var \PhpCsFixer\Finder $finder */
$finder = \PhpCsFixer\Finder::create()
    ->in(__DIR__)
    ->exclude(['vendor', 'storage', 'bootstrap/cache']);

/** @var \PhpCsFixer\Finder $finder */
$config = new \PhpCsFixer\Config();
return $config->setRules([
    '@PSR12' => true,
    'array_syntax' => ['syntax' => 'short'],
    'single_quote' => true,
    'indentation_type' => true,
])
    ->setIndent('    ')
    ->setFinder($finder);
