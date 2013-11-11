# Finding Support for OpenStack

If this is new for you, becoming familiar with the components and terminology could help dial back the frustration that comes with being
thrown into the fire.

## Technical Resources

Check out these OpenStack-related articles at our [SoftLayer Development Network (SLDN)](http://sldn.softlayer.com):

*   [New DevOps tools for SoftLayer](http://sldn.softlayer.com/blog/klandreth/New-DevOps-tools-SoftLayer)
*   [An Introduction to Object Storage](http://sldn.softlayer.com/article/Introduction-Object-Storage)
*   [FTP/SFTP for SoftLayer Object Storage](http://sldn.softlayer.com/blog/kmcdonald/FTPSFTP-SoftLayer-Object-Storage)

## Definitions for Components

Instead of using the names of the components, specialists in the OpenStack community always use the code/project names. This table
translates those for you.

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Components</th>

        <th>Name</th>

        <th>Description</th>
      </tr>
    </thead>

    <tbody>
      <tr>
        <td>Identity / Authentication</td>

        <td>Keystone</td>

        <td>Provides authentication, token validation, and service URLs for each service to authorized users.</td>
      </tr>

      <tr>
        <td>Compute</td>

        <td>Nova</td>

        <td>Manages all hypervisor interaction, management, and instance state.</td>
      </tr>

      <tr>
        <td>Networking</td>

        <td>Quantum (Neutron)</td>

        <td>Manages state for all networks defined within a cluster, and provides network routing, IP management, DHCP, and load
        balancing.</td>
      </tr>

      <tr>
        <td>Image Management</td>

        <td>Glance</td>

        <td>Maintains state and stores copies of OS images for use in new instance deployments.</td>
      </tr>

      <tr>
        <td>Block Storage</td>

        <td>Cinder</td>

        <td>Allocates and manages block storage for instances, whether secondary, tertiary, etc. disks that are attached to instances. Also
        stores and manages snapshots created from instances.</td>
      </tr>

      <tr>
        <td>Object Storage</td>

        <td>Swift</td>

        <td>Provides generic object storage services, usually as a more generic file store.</td>
      </tr>

      <tr>
        <td>Management UI</td>

        <td>Horizon</td>

        <td>Allows administrators and end-users to manage each of the above.</td>
      </tr>
    </tbody>
  </table>
</div>

## Definitions for Terms

The list below contains only basic terms found throughout our documentation. For a beefier, more comprehensive list, go to [http://docs.openstack.org/glossary/glossary](http://docs.openstack.org/glossary/glossary.html).

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Term</th>

        <th>Definition</th>
      </tr>
    </thead>

    <tbody>
      <tr>
        <td>Action</td>

        <td>Providers take idempotent actions to configure resources.</td>
      </tr>

      <tr>
        <td>Attribute</td>

        <td>Attributes are data about nodes.</td>
      </tr>

      <tr>
        <td>Authentication</td>

        <td>Clients authenticate to a server using pre-shared RSA keys and signed HTTP headers.</td>
      </tr>

      <tr>
        <td>Auto-vivify</td>

        <td>Internally in the library, attributes are automatically created as methods.</td>
      </tr>

      <tr>
        <td>Bootstrap</td>

        <td>In this context, bootstrap means to get Chef installed and ready to run on the target system.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Chef+Client">Client</a>
        </td>

        <td>The client communicates with a server to download the cookbooks it needs to compile and run its configuration.</td>
      </tr>

      <tr>
        <td>Configuration Management</td>

        <td>Setting up all the various components and services on a server so it can fulfill a role is configuration management.</td>
      </tr>

      <tr>
        <td>Convergence</td>

        <td>The process by which systems are brought in line with the overall configuration management policy.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Cookbooks">Cookbook</a>
        </td>

        <td>Chef cookbooks are packages for code used to configure some aspect of a system.</td>
      </tr>

      <tr>
        <td>DSL</td>

        <td>Programming or specification language dedicated to a specific problem domain. Chef makes use of meta-programming features in
        Ruby to create a simple DSL for writing recipe, role, and metadata files.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Data+Bags">Data Bag</a>
        </td>

        <td>Arbitrary store of JSON data that is indexed for Search.</td>
      </tr>

      <tr>
        <td>Definition</td>

        <td>Allow creation of new resource macros that string together other resources.</td>
      </tr>

      <tr>
        <td>Environments</td>

        <td>Provide a mechanism for managing different segmented spaces such as production, staging, development, and testing, with one
        Chef setup (or one organization on Hosted Chef): allowing you to set policies to dictate which versions of a given cookbook may be
        used within an infrastructure segment.</td>
      </tr>

      <tr>
        <td>File</td>

        <td>Specificity File specificity is a special order, which Chef looks for host-, platform-version- or platform-specific files to
        use when downloading/configuring file and template resources.</td>
      </tr>

      <tr>
        <td>
          <a href="http://github.com">Git</a>
        </td>

        <td>Git is a distributed version control system.</td>
      </tr>

      <tr>
        <td>Idempotent</td>

        <td>A mathematical term that means multiple applications of the same action should not change the result.</td>
      </tr>

      <tr>
        <td>Index</td>

        <td>Most data (all but Cookbooks) stored on the Chef Server are indexed for Search.</td>
      </tr>

      <tr>
        <td>Infrastructure</td>

        <td>Applications run on Infrastructure. Infrastructure in this context is not physical or virtualized things like servers or
        networking. Rather, infrastructure is the application itself, plus all the underlying software prerequisites, server settings,
        tweaks, and configuration files need for it to function properly. Infrastructure typically spans nodes, and often networks.</td>
      </tr>

      <tr>
        <td>JSON</td>

        <td>JavaScript Object Notation is a lightweight data format that is easy to read and write. All the APIs used in Chef are driven by
        JSON data.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Knife">Knife</a>
        </td>

        <td>A command-line tool used to work with a Chef Server and local Chef Repository.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Libraries">Library</a>
        </td>

        <td>In a Chef cookbook, a Library is arbitrary Ruby code that can be used to extend Chef’s language, or rollout new features.</td>
      </tr>

      <tr>
        <td>
          <a href="http://www.merbivore.com">Merb</a>
        </td>

        <td>Merb is a lightweight MVC framework used by the Chef Server to provide the API that clients communicate with.</td>
      </tr>

      <tr>
        <td>Metadata</td>

        <td>Chef cookbooks use metadata to provide hints to the Chef Server about what cookbooks should be deployed to a node, and can be
        used in user interfaces built on top of Chef.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Nodes">Node</a>
        </td>

        <td>A node is a system that is configured in an environment.</td>
      </tr>

      <tr>
        <td>Operating System</td>

        <td>An operating system manages hardware and provides services for running application software.</td>
      </tr>

      <tr>
        <td>Organization</td>

        <td>In Hosted Chef, an organization represents a company, department or other grouped set of servers infrastructure managed by
        Chef.</td>
      </tr>

      <tr>
        <td>Platform</td>

        <td>Chef detects the Operating System it is running on through Ohai, and uses that platform primarily to determine what provider to
        use for particular resources.</td>
      </tr>

      <tr>
        <td>Provider</td>

        <td>A provider is an abstraction on top of system commands or API calls that is used to configure a resource. Providers are often
        Operating System specific, such as the provider that installs packages for Debian (APT), Red Hat (Yum) or ArchLinux (Pacman).</td>
      </tr>

      <tr>
        <td>Provision</td>

        <td>The act of installing an operating system on bare metal, virtual machine or cloud computing instances is provisioning. Before
        Chef can configure and integrate systems, the system must first be provisioned, and then bootstrapped. This process varies by
        Operating System platform.</td>
      </tr>

      <tr>
        <td>Queue</td>

        <td>The Chef SOLR search index uses a queue for incoming data that needs to be indexed for search on the Chef Server.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Recipes">Recipe</a>
        </td>

        <td>A recipe is a Ruby DSL configuration file that you write to encapsulate resources that should be configured by Chef.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Chef+Repository">Repository</a>
        </td>

        <td>A Chef Repository is a directory where you store all the various code used to configure your infrastructure with Chef.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Resources">Resource</a>
        </td>

        <td>A resource is an abstraction that represents a particular thing that needs to be configured, such as a package or a
        service.</td>
      </tr>

      <tr>
        <td>
          <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">REST</a>
        </td>

        <td>“REpresentational State Transfer (REST) is a style of software architecture for distributed hypermedia systems”, commonly
        associated with HTTP. APIs conforming to REST constraints are “RESTful”. Chef uses a RESTful API.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Roles">Role</a>
        </td>

        <td>A role describes a set of functionality for nodes through recipes and attributes.</td>
      </tr>

      <tr>
        <td>
          <a href="http://ruby-lang.org/">Ruby</a>
        </td>

        <td>Ruby is an object-oriented programming language. Chef is written in Ruby and uses a number of Ruby DSLs for writing recipe,
        role, and metadata as code.</td>
      </tr>

      <tr>
        <td>Run</td>

        <td>List A run list is an array of recipes and roles that should be applied in order on the Node, or in another Role.</td>
      </tr>

      <tr>
        <td>
          <a href="http://lucene.apache.org/solr">SOLR</a>
        </td>

        <td>SOLR is a full text search engine platform written in Java.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Search">Search</a>
        </td>

        <td>Data stored by the Chef Server is indexed for Search and can be queried with SOLR’s Lucene search syntax.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Shef">Shef</a>
        </td>

        <td>The Chef read-eval-print loop (REPL), Shef, is a way to run Chef in an IRB session. IRB is an interactive Ruby console.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Chef+Solo">Solo</a>
        </td>

        <td>Chef Solo is a standalone, non-client/server way to execute Chef recipes on nodes.</td>
      </tr>

      <tr>
        <td>System Integration</td>

        <td>The act of making disparate systems in an infrastructure work together to provide application services and business value is
        system integration. It is where all the systems that have been configured are brought together to do their job.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Recipes#Recipes-Tags">Tags</a>
        </td>

        <td>Tags are an array attribute of nodes.</td>
      </tr>

      <tr>
        <td>Template</td>

        <td>Chef uses ERB templates to create dynamically generated configuration files. The template files themselves are stored in
        cookbooks and generated using the Erubis library as it is faster than the default implementation of ERB in the Ruby standard
        library.</td>
      </tr>

      <tr>
        <td>User</td>

        <td>In the Open Source Chef Server, users log into the Webui Management Console. In the Hosted Chef, users are credentialed
        entities used by humans to connect to Hosted Chef to manage the Organization.</td>
      </tr>

      <tr>
        <td>
          <a href="http://wiki.opscode.com/display/chef/Management+Console">Webui</a>
        </td>

        <td>Hosted Chef and the Open Source Chef Server have a web user interface Management Console that can be used to view and modify
        various parts of the environment.</td>
      </tr>
    </tbody>
  </table>
</div><br>