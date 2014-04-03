package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public class LinkedListMultimap<K, V>
  implements ListMultimap<K, V>, Serializable
{

  @GwtIncompatible("java serialization not supported")
  private static final long serialVersionUID;
  private transient List<Map.Entry<K, V>> entries;
  private transient Node<K, V> head;
  private transient Set<K> keySet;
  private transient Map<K, KeyList<K, V>> keyToKeyList;
  private transient Multiset<K> keys;
  private transient Map<K, Collection<V>> map;
  private transient int modCount;
  private transient int size;
  private transient Node<K, V> tail;
  private transient List<V> valuesList;

  LinkedListMultimap()
  {
    this.keyToKeyList = Maps.newHashMap();
  }

  private LinkedListMultimap(int paramInt)
  {
    this.keyToKeyList = new HashMap(paramInt);
  }

  private LinkedListMultimap(Multimap<? extends K, ? extends V> paramMultimap)
  {
    this(paramMultimap.keySet().size());
    putAll(paramMultimap);
  }

  private Node<K, V> addNode(@Nullable K paramK, @Nullable V paramV, @Nullable Node<K, V> paramNode)
  {
    Node localNode1 = new Node(paramK, paramV);
    if (this.head == null)
    {
      this.tail = localNode1;
      this.head = localNode1;
      this.keyToKeyList.put(paramK, new KeyList(localNode1));
      this.modCount = (1 + this.modCount);
    }
    while (true)
    {
      this.size = (1 + this.size);
      return localNode1;
      if (paramNode != null)
        break;
      this.tail.next = localNode1;
      localNode1.previous = this.tail;
      this.tail = localNode1;
      KeyList localKeyList2 = (KeyList)this.keyToKeyList.get(paramK);
      if (localKeyList2 == null)
      {
        this.keyToKeyList.put(paramK, new KeyList(localNode1));
        this.modCount = (1 + this.modCount);
      }
      else
      {
        localKeyList2.count = (1 + localKeyList2.count);
        Node localNode2 = localKeyList2.tail;
        localNode2.nextSibling = localNode1;
        localNode1.previousSibling = localNode2;
        localKeyList2.tail = localNode1;
      }
    }
    KeyList localKeyList1 = (KeyList)this.keyToKeyList.get(paramK);
    localKeyList1.count = (1 + localKeyList1.count);
    localNode1.previous = paramNode.previous;
    localNode1.previousSibling = paramNode.previousSibling;
    localNode1.next = paramNode;
    localNode1.nextSibling = paramNode;
    if (paramNode.previousSibling == null)
    {
      ((KeyList)this.keyToKeyList.get(paramK)).head = localNode1;
      label279: if (paramNode.previous != null)
        break label319;
      this.head = localNode1;
    }
    while (true)
    {
      paramNode.previous = localNode1;
      paramNode.previousSibling = localNode1;
      break;
      paramNode.previousSibling.nextSibling = localNode1;
      break label279;
      label319: paramNode.previous.next = localNode1;
    }
  }

  private static void checkElement(@Nullable Object paramObject)
  {
    if (paramObject == null)
      throw new NoSuchElementException();
  }

  public static <K, V> LinkedListMultimap<K, V> create()
  {
    return new LinkedListMultimap();
  }

  public static <K, V> LinkedListMultimap<K, V> create(int paramInt)
  {
    return new LinkedListMultimap(paramInt);
  }

  public static <K, V> LinkedListMultimap<K, V> create(Multimap<? extends K, ? extends V> paramMultimap)
  {
    return new LinkedListMultimap(paramMultimap);
  }

  private static <K, V> Map.Entry<K, V> createEntry(Node<K, V> paramNode)
  {
    return new AbstractMapEntry()
    {
      public K getKey()
      {
        return this.val$node.key;
      }

      public V getValue()
      {
        return this.val$node.value;
      }

      public V setValue(V paramAnonymousV)
      {
        Object localObject = this.val$node.value;
        this.val$node.value = paramAnonymousV;
        return localObject;
      }
    };
  }

  private List<V> getCopy(@Nullable Object paramObject)
  {
    return Collections.unmodifiableList(Lists.newArrayList(new ValueForKeyIterator(paramObject)));
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.keyToKeyList = Maps.newLinkedHashMap();
    int i = paramObjectInputStream.readInt();
    for (int j = 0; j < i; j++)
      put(paramObjectInputStream.readObject(), paramObjectInputStream.readObject());
  }

  private void removeAllNodes(@Nullable Object paramObject)
  {
    ValueForKeyIterator localValueForKeyIterator = new ValueForKeyIterator(paramObject);
    while (localValueForKeyIterator.hasNext())
    {
      localValueForKeyIterator.next();
      localValueForKeyIterator.remove();
    }
  }

  private void removeNode(Node<K, V> paramNode)
  {
    if (paramNode.previous != null)
    {
      paramNode.previous.next = paramNode.next;
      if (paramNode.next == null)
        break label102;
      paramNode.next.previous = paramNode.previous;
      label36: if ((paramNode.previousSibling != null) || (paramNode.nextSibling != null))
        break label113;
      ((KeyList)this.keyToKeyList.remove(paramNode.key)).count = 0;
      this.modCount = (1 + this.modCount);
    }
    while (true)
    {
      this.size = (-1 + this.size);
      return;
      this.head = paramNode.next;
      break;
      label102: this.tail = paramNode.previous;
      break label36;
      label113: KeyList localKeyList = (KeyList)this.keyToKeyList.get(paramNode.key);
      localKeyList.count = (-1 + localKeyList.count);
      if (paramNode.previousSibling == null)
        localKeyList.head = paramNode.nextSibling;
      while (true)
      {
        if (paramNode.nextSibling != null)
          break label187;
        localKeyList.tail = paramNode.previousSibling;
        break;
        paramNode.previousSibling.nextSibling = paramNode.nextSibling;
      }
      label187: paramNode.nextSibling.previousSibling = paramNode.previousSibling;
    }
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeInt(size());
    Iterator localIterator = entries().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramObjectOutputStream.writeObject(localEntry.getKey());
      paramObjectOutputStream.writeObject(localEntry.getValue());
    }
  }

  public Map<K, Collection<V>> asMap()
  {
    Object localObject = this.map;
    if (localObject == null)
    {
      localObject = new Multimaps.AsMap()
      {
        Iterator<Map.Entry<K, Collection<V>>> entryIterator()
        {
          return new TransformedIterator(new LinkedListMultimap.DistinctKeyIterator(LinkedListMultimap.this, null))
          {
            Map.Entry<K, Collection<V>> transform(final K paramAnonymous2K)
            {
              return new AbstractMapEntry()
              {
                public K getKey()
                {
                  return paramAnonymous2K;
                }

                public Collection<V> getValue()
                {
                  return LinkedListMultimap.this.get(paramAnonymous2K);
                }
              };
            }
          };
        }

        Multimap<K, V> multimap()
        {
          return LinkedListMultimap.this;
        }

        public int size()
        {
          return LinkedListMultimap.this.keyToKeyList.size();
        }
      };
      this.map = ((Map)localObject);
    }
    return localObject;
  }

  public void clear()
  {
    this.head = null;
    this.tail = null;
    this.keyToKeyList.clear();
    this.size = 0;
    this.modCount = (1 + this.modCount);
  }

  public boolean containsEntry(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    ValueForKeyIterator localValueForKeyIterator = new ValueForKeyIterator(paramObject1);
    while (localValueForKeyIterator.hasNext())
      if (Objects.equal(localValueForKeyIterator.next(), paramObject2))
        return true;
    return false;
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return this.keyToKeyList.containsKey(paramObject);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    NodeIterator localNodeIterator = new NodeIterator();
    while (localNodeIterator.hasNext())
      if (Objects.equal(((Node)localNodeIterator.next()).value, paramObject))
        return true;
    return false;
  }

  public List<Map.Entry<K, V>> entries()
  {
    Object localObject = this.entries;
    if (localObject == null)
    {
      localObject = new AbstractSequentialList()
      {
        public ListIterator<Map.Entry<K, V>> listIterator(int paramAnonymousInt)
        {
          return new TransformedListIterator(new LinkedListMultimap.NodeIterator(LinkedListMultimap.this, paramAnonymousInt))
          {
            Map.Entry<K, V> transform(LinkedListMultimap.Node<K, V> paramAnonymous2Node)
            {
              return LinkedListMultimap.createEntry(paramAnonymous2Node);
            }
          };
        }

        public int size()
        {
          return LinkedListMultimap.this.size;
        }
      };
      this.entries = ((List)localObject);
    }
    return localObject;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof Multimap))
    {
      Multimap localMultimap = (Multimap)paramObject;
      return asMap().equals(localMultimap.asMap());
    }
    return false;
  }

  public List<V> get(@Nullable final K paramK)
  {
    return new AbstractSequentialList()
    {
      public ListIterator<V> listIterator(int paramAnonymousInt)
      {
        return new LinkedListMultimap.ValueForKeyIterator(LinkedListMultimap.this, paramK, paramAnonymousInt);
      }

      public boolean removeAll(Collection<?> paramAnonymousCollection)
      {
        return Iterators.removeAll(iterator(), paramAnonymousCollection);
      }

      public boolean retainAll(Collection<?> paramAnonymousCollection)
      {
        return Iterators.retainAll(iterator(), paramAnonymousCollection);
      }

      public int size()
      {
        LinkedListMultimap.KeyList localKeyList = (LinkedListMultimap.KeyList)LinkedListMultimap.this.keyToKeyList.get(paramK);
        if (localKeyList == null)
          return 0;
        return localKeyList.count;
      }
    };
  }

  public int hashCode()
  {
    return asMap().hashCode();
  }

  public boolean isEmpty()
  {
    return this.head == null;
  }

  public Set<K> keySet()
  {
    Object localObject = this.keySet;
    if (localObject == null)
    {
      localObject = new Sets.ImprovedAbstractSet()
      {
        public boolean contains(Object paramAnonymousObject)
        {
          return LinkedListMultimap.this.containsKey(paramAnonymousObject);
        }

        public Iterator<K> iterator()
        {
          return new LinkedListMultimap.DistinctKeyIterator(LinkedListMultimap.this, null);
        }

        public boolean remove(Object paramAnonymousObject)
        {
          return !LinkedListMultimap.this.removeAll(paramAnonymousObject).isEmpty();
        }

        public int size()
        {
          return LinkedListMultimap.this.keyToKeyList.size();
        }
      };
      this.keySet = ((Set)localObject);
    }
    return localObject;
  }

  public Multiset<K> keys()
  {
    Object localObject = this.keys;
    if (localObject == null)
    {
      localObject = new MultisetView(null);
      this.keys = ((Multiset)localObject);
    }
    return localObject;
  }

  public boolean put(@Nullable K paramK, @Nullable V paramV)
  {
    addNode(paramK, paramV, null);
    return true;
  }

  public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
  {
    boolean bool = false;
    Iterator localIterator = paramMultimap.entries().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      bool |= put(localEntry.getKey(), localEntry.getValue());
    }
    return bool;
  }

  public boolean putAll(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    boolean bool = false;
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      bool |= put(paramK, localIterator.next());
    return bool;
  }

  public boolean remove(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    ValueForKeyIterator localValueForKeyIterator = new ValueForKeyIterator(paramObject1);
    while (localValueForKeyIterator.hasNext())
      if (Objects.equal(localValueForKeyIterator.next(), paramObject2))
      {
        localValueForKeyIterator.remove();
        return true;
      }
    return false;
  }

  public List<V> removeAll(@Nullable Object paramObject)
  {
    List localList = getCopy(paramObject);
    removeAllNodes(paramObject);
    return localList;
  }

  public List<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    List localList = getCopy(paramK);
    ValueForKeyIterator localValueForKeyIterator = new ValueForKeyIterator(paramK);
    Iterator localIterator = paramIterable.iterator();
    while ((localValueForKeyIterator.hasNext()) && (localIterator.hasNext()))
    {
      localValueForKeyIterator.next();
      localValueForKeyIterator.set(localIterator.next());
    }
    while (localValueForKeyIterator.hasNext())
    {
      localValueForKeyIterator.next();
      localValueForKeyIterator.remove();
    }
    while (localIterator.hasNext())
      localValueForKeyIterator.add(localIterator.next());
    return localList;
  }

  public int size()
  {
    return this.size;
  }

  public String toString()
  {
    return asMap().toString();
  }

  public List<V> values()
  {
    Object localObject = this.valuesList;
    if (localObject == null)
    {
      localObject = new AbstractSequentialList()
      {
        public ListIterator<V> listIterator(int paramAnonymousInt)
        {
          final LinkedListMultimap.NodeIterator localNodeIterator = new LinkedListMultimap.NodeIterator(LinkedListMultimap.this, paramAnonymousInt);
          return new TransformedListIterator(localNodeIterator)
          {
            public void set(V paramAnonymous2V)
            {
              localNodeIterator.setValue(paramAnonymous2V);
            }

            V transform(LinkedListMultimap.Node<K, V> paramAnonymous2Node)
            {
              return paramAnonymous2Node.value;
            }
          };
        }

        public int size()
        {
          return LinkedListMultimap.this.size;
        }
      };
      this.valuesList = ((List)localObject);
    }
    return localObject;
  }

  private class DistinctKeyIterator
    implements Iterator<K>
  {
    LinkedListMultimap.Node<K, V> current;
    int expectedModCount = LinkedListMultimap.this.modCount;
    LinkedListMultimap.Node<K, V> next = LinkedListMultimap.this.head;
    final Set<K> seenKeys = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());

    private DistinctKeyIterator()
    {
    }

    private void checkForConcurrentModification()
    {
      if (LinkedListMultimap.this.modCount != this.expectedModCount)
        throw new ConcurrentModificationException();
    }

    public boolean hasNext()
    {
      checkForConcurrentModification();
      return this.next != null;
    }

    public K next()
    {
      checkForConcurrentModification();
      LinkedListMultimap.checkElement(this.next);
      this.current = this.next;
      this.seenKeys.add(this.current.key);
      do
        this.next = this.next.next;
      while ((this.next != null) && (!this.seenKeys.add(this.next.key)));
      return this.current.key;
    }

    public void remove()
    {
      checkForConcurrentModification();
      if (this.current != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        LinkedListMultimap.this.removeAllNodes(this.current.key);
        this.current = null;
        this.expectedModCount = LinkedListMultimap.this.modCount;
        return;
      }
    }
  }

  private static class KeyList<K, V>
  {
    int count;
    LinkedListMultimap.Node<K, V> head;
    LinkedListMultimap.Node<K, V> tail;

    KeyList(LinkedListMultimap.Node<K, V> paramNode)
    {
      this.head = paramNode;
      this.tail = paramNode;
      paramNode.previousSibling = null;
      paramNode.nextSibling = null;
      this.count = 1;
    }
  }

  private class MultisetView extends AbstractMultiset<K>
  {
    private MultisetView()
    {
    }

    public int count(Object paramObject)
    {
      LinkedListMultimap.KeyList localKeyList = (LinkedListMultimap.KeyList)LinkedListMultimap.this.keyToKeyList.get(paramObject);
      if (localKeyList == null)
        return 0;
      return localKeyList.count;
    }

    int distinctElements()
    {
      return elementSet().size();
    }

    public Set<K> elementSet()
    {
      return LinkedListMultimap.this.keySet();
    }

    Iterator<Multiset.Entry<K>> entryIterator()
    {
      return new TransformedIterator(new LinkedListMultimap.DistinctKeyIterator(LinkedListMultimap.this, null))
      {
        Multiset.Entry<K> transform(final K paramAnonymousK)
        {
          return new Multisets.AbstractEntry()
          {
            public int getCount()
            {
              return ((LinkedListMultimap.KeyList)LinkedListMultimap.this.keyToKeyList.get(paramAnonymousK)).count;
            }

            public K getElement()
            {
              return paramAnonymousK;
            }
          };
        }
      };
    }

    public Iterator<K> iterator()
    {
      return new TransformedIterator(new LinkedListMultimap.NodeIterator(LinkedListMultimap.this))
      {
        K transform(LinkedListMultimap.Node<K, V> paramAnonymousNode)
        {
          return paramAnonymousNode.key;
        }
      };
    }

    public int remove(@Nullable Object paramObject, int paramInt)
    {
      if (paramInt >= 0);
      int i;
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        i = count(paramObject);
        LinkedListMultimap.ValueForKeyIterator localValueForKeyIterator = new LinkedListMultimap.ValueForKeyIterator(LinkedListMultimap.this, paramObject);
        int k;
        for (int j = paramInt; ; j = k)
        {
          k = j - 1;
          if ((j <= 0) || (!localValueForKeyIterator.hasNext()))
            break;
          localValueForKeyIterator.next();
          localValueForKeyIterator.remove();
        }
      }
      return i;
    }

    public int size()
    {
      return LinkedListMultimap.this.size;
    }
  }

  private static final class Node<K, V>
  {
    final K key;
    Node<K, V> next;
    Node<K, V> nextSibling;
    Node<K, V> previous;
    Node<K, V> previousSibling;
    V value;

    Node(@Nullable K paramK, @Nullable V paramV)
    {
      this.key = paramK;
      this.value = paramV;
    }

    public String toString()
    {
      return this.key + "=" + this.value;
    }
  }

  private class NodeIterator
    implements ListIterator<LinkedListMultimap.Node<K, V>>
  {
    LinkedListMultimap.Node<K, V> current;
    int expectedModCount = LinkedListMultimap.this.modCount;
    LinkedListMultimap.Node<K, V> next;
    int nextIndex;
    LinkedListMultimap.Node<K, V> previous;

    NodeIterator()
    {
      this.next = LinkedListMultimap.this.head;
    }

    NodeIterator(int arg2)
    {
      int j = LinkedListMultimap.this.size();
      int i;
      Preconditions.checkPositionIndex(i, j);
      if (i >= j / 2)
      {
        this.previous = LinkedListMultimap.this.tail;
        this.nextIndex = j;
        int i1;
        for (int n = i; ; n = i1)
        {
          i1 = n + 1;
          if (n >= j)
            break;
          previous();
        }
      }
      this.next = LinkedListMultimap.this.head;
      int m;
      for (int k = i; ; k = m)
      {
        m = k - 1;
        if (k <= 0)
          break;
        next();
      }
      this.current = null;
    }

    private void checkForConcurrentModification()
    {
      if (LinkedListMultimap.this.modCount != this.expectedModCount)
        throw new ConcurrentModificationException();
    }

    public void add(LinkedListMultimap.Node<K, V> paramNode)
    {
      throw new UnsupportedOperationException();
    }

    public boolean hasNext()
    {
      checkForConcurrentModification();
      return this.next != null;
    }

    public boolean hasPrevious()
    {
      checkForConcurrentModification();
      return this.previous != null;
    }

    public LinkedListMultimap.Node<K, V> next()
    {
      checkForConcurrentModification();
      LinkedListMultimap.checkElement(this.next);
      LinkedListMultimap.Node localNode = this.next;
      this.current = localNode;
      this.previous = localNode;
      this.next = this.next.next;
      this.nextIndex = (1 + this.nextIndex);
      return this.current;
    }

    public int nextIndex()
    {
      return this.nextIndex;
    }

    public LinkedListMultimap.Node<K, V> previous()
    {
      checkForConcurrentModification();
      LinkedListMultimap.checkElement(this.previous);
      LinkedListMultimap.Node localNode = this.previous;
      this.current = localNode;
      this.next = localNode;
      this.previous = this.previous.previous;
      this.nextIndex = (-1 + this.nextIndex);
      return this.current;
    }

    public int previousIndex()
    {
      return -1 + this.nextIndex;
    }

    public void remove()
    {
      checkForConcurrentModification();
      boolean bool;
      if (this.current != null)
      {
        bool = true;
        Preconditions.checkState(bool);
        if (this.current == this.next)
          break label82;
        this.previous = this.current.previous;
        this.nextIndex = (-1 + this.nextIndex);
      }
      while (true)
      {
        LinkedListMultimap.this.removeNode(this.current);
        this.current = null;
        this.expectedModCount = LinkedListMultimap.this.modCount;
        return;
        bool = false;
        break;
        label82: this.next = this.current.next;
      }
    }

    public void set(LinkedListMultimap.Node<K, V> paramNode)
    {
      throw new UnsupportedOperationException();
    }

    void setValue(V paramV)
    {
      if (this.current != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        this.current.value = paramV;
        return;
      }
    }
  }

  private class ValueForKeyIterator
    implements ListIterator<V>
  {
    LinkedListMultimap.Node<K, V> current;
    final Object key;
    LinkedListMultimap.Node<K, V> next;
    int nextIndex;
    LinkedListMultimap.Node<K, V> previous;

    ValueForKeyIterator(Object arg2)
    {
      Object localObject;
      this.key = localObject;
      LinkedListMultimap.KeyList localKeyList = (LinkedListMultimap.KeyList)LinkedListMultimap.this.keyToKeyList.get(localObject);
      if (localKeyList == null);
      for (LinkedListMultimap.Node localNode = null; ; localNode = localKeyList.head)
      {
        this.next = localNode;
        return;
      }
    }

    public ValueForKeyIterator(Object paramInt, int arg3)
    {
      LinkedListMultimap.KeyList localKeyList = (LinkedListMultimap.KeyList)LinkedListMultimap.this.keyToKeyList.get(paramInt);
      int j;
      int i;
      if (localKeyList == null)
      {
        j = 0;
        Preconditions.checkPositionIndex(i, j);
        if (i < j / 2)
          break label115;
        if (localKeyList != null)
          break label105;
      }
      label105: for (LinkedListMultimap.Node localNode2 = null; ; localNode2 = localKeyList.tail)
      {
        this.previous = localNode2;
        this.nextIndex = j;
        int i1;
        for (int n = i; ; n = i1)
        {
          i1 = n + 1;
          if (n >= j)
            break;
          previous();
        }
        j = localKeyList.count;
        break;
      }
      label115: if (localKeyList == null);
      for (LinkedListMultimap.Node localNode1 = null; ; localNode1 = localKeyList.head)
      {
        this.next = localNode1;
        int m;
        for (int k = i; ; k = m)
        {
          m = k - 1;
          if (k <= 0)
            break;
          next();
        }
      }
      this.key = paramInt;
      this.current = null;
    }

    public void add(V paramV)
    {
      this.previous = LinkedListMultimap.this.addNode(this.key, paramV, this.next);
      this.nextIndex = (1 + this.nextIndex);
      this.current = null;
    }

    public boolean hasNext()
    {
      return this.next != null;
    }

    public boolean hasPrevious()
    {
      return this.previous != null;
    }

    public V next()
    {
      LinkedListMultimap.checkElement(this.next);
      LinkedListMultimap.Node localNode = this.next;
      this.current = localNode;
      this.previous = localNode;
      this.next = this.next.nextSibling;
      this.nextIndex = (1 + this.nextIndex);
      return this.current.value;
    }

    public int nextIndex()
    {
      return this.nextIndex;
    }

    public V previous()
    {
      LinkedListMultimap.checkElement(this.previous);
      LinkedListMultimap.Node localNode = this.previous;
      this.current = localNode;
      this.next = localNode;
      this.previous = this.previous.previousSibling;
      this.nextIndex = (-1 + this.nextIndex);
      return this.current.value;
    }

    public int previousIndex()
    {
      return -1 + this.nextIndex;
    }

    public void remove()
    {
      boolean bool;
      if (this.current != null)
      {
        bool = true;
        Preconditions.checkState(bool);
        if (this.current == this.next)
          break label67;
        this.previous = this.current.previousSibling;
        this.nextIndex = (-1 + this.nextIndex);
      }
      while (true)
      {
        LinkedListMultimap.this.removeNode(this.current);
        this.current = null;
        return;
        bool = false;
        break;
        label67: this.next = this.current.nextSibling;
      }
    }

    public void set(V paramV)
    {
      if (this.current != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        this.current.value = paramV;
        return;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.LinkedListMultimap
 * JD-Core Version:    0.6.2
 */