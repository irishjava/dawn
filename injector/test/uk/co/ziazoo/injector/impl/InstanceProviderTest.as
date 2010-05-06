package uk.co.ziazoo.injector.impl
{
  import org.flexunit.Assert;

  import some.thing.Ground;
  import some.thing.Tree;

  public class InstanceProviderTest
  {
    public function InstanceProviderTest()
    {
    }

    [Test]
    public function givesCorrectInstance():void
    {
      var tree:Tree = new Tree(new Ground());
      var provider:InstanceProvider = new InstanceProvider(tree);

      var obj:Tree = provider.getObject() as Tree;

      Assert.assertNotNull(obj);
      Assert.assertEquals(obj, tree);
    }
  }
}