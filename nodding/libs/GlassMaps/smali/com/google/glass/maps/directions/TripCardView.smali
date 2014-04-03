.class public Lcom/google/glass/maps/directions/TripCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/glass/widget/TypophileTextView;

.field private c:Lcom/google/glass/widget/DynamicSizeTextView;

.field private d:Lcom/google/glass/widget/TypophileTextView;

.field private e:Lcom/google/glass/maps/SchematicView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TripCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TripCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TripCardView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/maps/directions/TripCardView;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bo;->transit_trip_card:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/google/glass/maps/bm;->trip_summary_icons:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->b:Lcom/google/glass/widget/TypophileTextView;

    sget v0, Lcom/google/glass/maps/bm;->from_to_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->c:Lcom/google/glass/widget/DynamicSizeTextView;

    sget v0, Lcom/google/glass/maps/bm;->destination_name:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->d:Lcom/google/glass/widget/TypophileTextView;

    sget v0, Lcom/google/glass/maps/bm;->schematic:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TripCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/SchematicView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->e:Lcom/google/glass/maps/SchematicView;

    return-void
.end method


# virtual methods
.method public setTrip(Lcom/google/glass/maps/directions/i;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->b:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TripCardView;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/google/glass/maps/directions/i;->a(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->c:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TripCardView;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/b;->b(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->d:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p1, Lcom/google/glass/maps/directions/i;->a:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ao;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TripCardView;->e:Lcom/google/glass/maps/SchematicView;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/i;->c()[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/SchematicView;->setSegments([Lcom/google/glass/maps/SchematicSegment;)V

    return-void
.end method
