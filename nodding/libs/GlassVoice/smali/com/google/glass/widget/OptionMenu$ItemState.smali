.class public Lcom/google/glass/widget/OptionMenu$ItemState;
.super Ljava/lang/Object;
.source "OptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/OptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemState"
.end annotation


# instance fields
.field private final id:I

.field private final image:Landroid/graphics/drawable/Drawable;

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "image"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->imageUrl:Ljava/lang/String;

    .line 72
    iput p1, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->id:I

    .line 73
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->name:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->image:Landroid/graphics/drawable/Drawable;

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "image"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->imageUrl:Ljava/lang/String;

    .line 66
    iput p1, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->id:I

    .line 67
    iput-object p2, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->name:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->image:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->id:I

    return v0
.end method

.method public final getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->imageUrl:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenu$ItemState;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
