.class public abstract Lcom/google/glass/maps/b;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/n;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/CardsView;


# direct methods
.method protected constructor <init>(Lcom/google/glass/maps/CardsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/b;->a:Lcom/google/glass/maps/CardsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a(I)Lcom/google/android/maps/driveabout/nav/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b;->a:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b;->a:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v0, v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b;->a(I)Lcom/google/android/maps/driveabout/nav/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/b;->a:Lcom/google/glass/maps/CardsView;

    iget-object v0, v0, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
