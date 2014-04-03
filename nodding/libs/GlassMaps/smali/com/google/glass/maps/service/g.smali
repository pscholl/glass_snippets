.class public final Lcom/google/glass/maps/service/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/Uri;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/google/glass/maps/MapHelper;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    const/4 v0, 0x1

    iput v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const-string v0, "w"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "w"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    :cond_1
    const-string v0, "h"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "h"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    :cond_2
    const-string v0, "center"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "center"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->e(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    :cond_3
    const-string v0, "zoom"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "zoom"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->d(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    :cond_4
    const-string v0, "span"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "span"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->e(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    iput-object v2, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    iget-object v0, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "marker"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->b(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-array v0, v4, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "polyline"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->c(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-array v0, v4, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    return-object v1
.end method

.method private static a(Ljava/lang/String;C)Ljava/util/List;
    .locals 3

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static b(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lcom/google/glass/maps/service/g;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-static {v0, v3}, Lcom/google/glass/maps/service/g;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->e(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    iput v4, v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    iput-object v0, v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :try_start_0
    const-class v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker$MarkerType;

    invoke-static {v0}, Lcom/google/glass/util/bl;->a(Ljava/lang/Class;)[I

    move-result-object v4

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    array-length v3, v4

    if-lt v0, v3, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iput v0, v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lcom/google/glass/maps/service/g;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-static {v0, v3}, Lcom/google/glass/maps/service/g;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    new-array v2, v4, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lcom/google/glass/maps/service/g;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v2, 0x2c

    invoke-static {p0, v2}, Lcom/google/glass/maps/service/g;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    add-int/lit8 v4, v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/g;->a(Landroid/net/Uri;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method
