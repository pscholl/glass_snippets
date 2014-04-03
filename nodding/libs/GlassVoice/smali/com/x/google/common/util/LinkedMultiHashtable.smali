.class public Lcom/x/google/common/util/LinkedMultiHashtable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/util/LinkedMultiHashtable$1;,
        Lcom/x/google/common/util/LinkedMultiHashtable$Entry;
    }
.end annotation


# instance fields
.field private orderedEntries:Ljava/util/Vector;

.field private table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/x/google/common/util/LinkedMultiHashtable;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {p0, p1}, Lcom/x/google/common/util/text/TextUtil;->splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-direct {v5}, Lcom/x/google/common/util/LinkedMultiHashtable;-><init>()V

    move v0, v1

    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_2

    aget-object v2, v6, v0

    invoke-virtual {v2, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    aget-object v4, v6, v0

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v7, v6, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v5, v4, v2}, Lcom/x/google/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-object v2, v6, v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v3, v5

    goto :goto_0
.end method


# virtual methods
.method public addEntries(Lcom/x/google/common/util/LinkedMultiHashtable;)V
    .locals 3

    invoke-virtual {p1}, Lcom/x/google/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/x/google/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clone()Lcom/x/google/common/util/LinkedMultiHashtable;
    .locals 4

    new-instance v1, Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-direct {v1}, Lcom/x/google/common/util/LinkedMultiHashtable;-><init>()V

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/x/google/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable;->clone()Lcom/x/google/common/util/LinkedMultiHashtable;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    if-nez p1, :cond_1

    iget-object v2, v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/x/google/common/util/LinkedMultiHashtable;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/x/google/common/util/LinkedMultiHashtable;

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/x/google/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x25

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public join(CC)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/x/google/common/util/LinkedMultiHashtable;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0, v2, p2}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->appendToStringBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0, v2, p2}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->appendToStringBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/x/google/common/util/ArrayUtil;->copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    new-instance v3, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-direct {v3, p1, p2, v2}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/x/google/common/util/LinkedMultiHashtable$1;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v1, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
