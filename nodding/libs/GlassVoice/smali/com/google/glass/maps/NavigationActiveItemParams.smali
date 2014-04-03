.class public final Lcom/google/glass/maps/NavigationActiveItemParams;
.super Ljava/lang/Object;
.source "NavigationActiveItemParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/maps/NavigationActiveItemParams$CardType;
    }
.end annotation


# static fields
.field private static final KEY_CARD_TYPE:Ljava/lang/String; = "card_type"

.field private static final KEY_DESTINATION_NAME:Ljava/lang/String; = "destination_name"

.field private static final KEY_ICON_URI:Ljava/lang/String; = "icon_uri"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_SCHEMATIC_SEGMENTS:Ljava/lang/String; = "schematic_segments"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TRIP_SUMMARY:Ljava/lang/String; = "summary_icons"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lcom/google/glass/util/ParcelableImageSpannable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 55
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "card_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 48
    return-void
.end method

.method private areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 178
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/maps/NavigationActiveItemParams;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 39
    new-instance v0, Lcom/google/glass/maps/NavigationActiveItemParams;

    if-eqz p0, :cond_0

    .end local p0
    :goto_0
    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .restart local p0
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .end local p0
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v3

    .line 162
    :cond_1
    instance-of v5, p1, Lcom/google/glass/maps/NavigationActiveItemParams;

    if-nez v5, :cond_2

    move v3, v4

    .line 163
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 165
    check-cast v2, Lcom/google/glass/maps/NavigationActiveItemParams;

    .line 166
    .local v2, other:Lcom/google/glass/maps/NavigationActiveItemParams;
    iget-object v5, v2, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 167
    goto :goto_0

    .line 169
    :cond_3
    iget-object v5, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, key:Ljava/lang/String;
    iget-object v5, v2, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/glass/maps/NavigationActiveItemParams;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 171
    goto :goto_0
.end method

.method public getCardType()Lcom/google/glass/maps/NavigationActiveItemParams$CardType;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "card_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    return-object v0
.end method

.method public getDestinationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "destination_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v2, "schematic_segments"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v2, "schematic_segments"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/maps/SchematicSegment;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/glass/maps/SchematicSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/maps/SchematicSegment;

    .line 139
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/maps/SchematicSegment;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTripSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v2, "summary_icons"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/ParcelableImageSpannable;

    .line 120
    .local v0, tripSummary:Lcom/google/glass/util/ParcelableImageSpannable;
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/util/ParcelableImageSpannable;->toSpanned(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 148
    const/4 v2, 0x1

    .line 149
    .local v2, result:I
    iget-object v4, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    .local v3, value:Ljava/lang/Object;
    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 152
    mul-int/lit8 v5, v2, 0x1f

    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int v2, v5, v4

    .line 153
    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    .line 154
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public setCardType(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "card_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    return-void
.end method

.method public setDestinationName(Ljava/lang/String;)V
    .locals 2
    .parameter "destinationName"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "destination_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 2
    .parameter "iconUri"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setSchematicSegments([Lcom/google/glass/maps/SchematicSegment;)V
    .locals 3
    .parameter "segments"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/glass/maps/SchematicSegment;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v2, "schematic_segments"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 132
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/glass/maps/SchematicSegment;>;"
    :cond_0
    return-void
.end method

.method public setTimeString(Ljava/lang/String;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setTripSummary(Lcom/google/glass/util/ParcelableImageSpannable;)V
    .locals 2
    .parameter "tripSummary"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "summary_icons"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    :cond_0
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    return-object v0
.end method
