<?php
namespace AndrewCassell;

use League\Plates\Engine;
use League\Plates\Extension\Asset;
use League\Plates\Extension\URI;

abstract class Controller
{
    /**
     * @var Engine
     */
    protected $engine;

    /**
     * @param Engine $engine
     * @param Asset $assetExtension
     * @param URI $uriExtension
     */
    public function __construct(Engine $engine, Asset $assetExtension, URI $uriExtension)
    {
        $this->engine = $engine;
        $this->engine->loadExtension($assetExtension);
        $this->engine->loadExtension($uriExtension);
    }

}
