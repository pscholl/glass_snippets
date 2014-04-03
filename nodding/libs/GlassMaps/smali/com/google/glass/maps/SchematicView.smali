.class public Lcom/google/glass/maps/SchematicView;
.super Landroid/view/View;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Landroid/graphics/Paint;

.field private static final d:Landroid/graphics/Path;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I


# instance fields
.field private i:[Lcom/google/glass/maps/SchematicSegment;

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/maps/SchematicView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/SchematicView;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/maps/SchematicView;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/SchematicView;->b:Lcom/google/glass/logging/i;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/google/glass/maps/SchematicView;->d:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->j:I

    invoke-direct {p0}, Lcom/google/glass/maps/SchematicView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->j:I

    invoke-direct {p0}, Lcom/google/glass/maps/SchematicView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->j:I

    invoke-direct {p0}, Lcom/google/glass/maps/SchematicView;->a()V

    return-void
.end method

.method private a(ILcom/google/glass/maps/SchematicSegment;)I
    .locals 8

    iget-object v0, p0, Lcom/google/glass/maps/SchematicView;->i:[Lcom/google/glass/maps/SchematicSegment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/glass/maps/SchematicView;->k:I

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/glass/maps/SchematicView;->k:I

    int-to-double v2, v0

    iget-wide v4, p2, Lcom/google/glass/maps/SchematicSegment;->d:J

    long-to-double v4, v4

    iget v0, p0, Lcom/google/glass/maps/SchematicView;->j:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/d;->schematic_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->e:I

    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/d;->schematic_line_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->f:I

    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/d;->schematic_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->g:I

    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/d;->schematic_inner_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->h:I

    sget v0, Lcom/google/glass/maps/SchematicView;->g:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->k:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFIZ)V
    .locals 4

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    sget v1, Lcom/google/glass/maps/SchematicView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p5, :cond_0

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    sget-object v0, Lcom/google/glass/maps/SchematicView;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v1, Lcom/google/glass/maps/SchematicView;->d:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v1, Lcom/google/glass/maps/SchematicView;->d:Landroid/graphics/Path;

    invoke-virtual {v1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Lcom/google/glass/maps/SchematicView;->d:Landroid/graphics/Path;

    sget-object v1, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;FI)V
    .locals 3

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v1, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget v1, Lcom/google/glass/maps/SchematicView;->g:I

    int-to-float v1, v1

    sget-object v2, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v1, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget v1, Lcom/google/glass/maps/SchematicView;->h:I

    int-to-float v1, v1

    sget-object v2, Lcom/google/glass/maps/SchematicView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static a([Lcom/google/glass/maps/SchematicSegment;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v0, p0

    const/16 v3, 0xf

    if-le v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_5

    sget-object v0, Lcom/google/glass/maps/SchematicView;->b:Lcom/google/glass/logging/i;

    const-string v1, "Segment 0 of an overview must be a start"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/google/glass/maps/SchematicView;->b:Lcom/google/glass/logging/i;

    const-string v1, "Transfer requires an initial CONTINUE segment"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :pswitch_2
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->CONTINUE:Lcom/google/glass/maps/SchematicSegment$Type;

    if-ne v0, v3, :cond_3

    aget-object v0, p0, v1

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_0

    :cond_3
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    if-ne v0, v3, :cond_4

    aget-object v0, p0, v1

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_0

    :cond_4
    sget-object v0, Lcom/google/glass/maps/SchematicView;->b:Lcom/google/glass/logging/i;

    const-string v3, "Illegal 2 segment schematic.  Segment 0: %s, Segment 1: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p0, v2

    iget-object v5, v5, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v5, v4, v2

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_6

    sget-object v0, Lcom/google/glass/maps/SchematicView;->b:Lcom/google/glass/logging/i;

    const-string v1, "Last segment of an overview must be an end"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto/16 :goto_0

    :cond_6
    move v0, v1

    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    iget-object v3, v3, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v4, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v3, v4, :cond_7

    sget-object v0, Lcom/google/glass/maps/SchematicView;->b:Lcom/google/glass/logging/i;

    const-string v1, "Middle segments of an overview must be transfers"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/SchematicView;->i:[Lcom/google/glass/maps/SchematicSegment;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v3, Lcom/google/glass/maps/SchematicView;->e:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v2, v3

    sget v2, Lcom/google/glass/maps/SchematicView;->g:I

    mul-int/lit8 v13, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/SchematicView;->i:[Lcom/google/glass/maps/SchematicSegment;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    sget v3, Lcom/google/glass/maps/SchematicView;->e:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/maps/SchematicView;->i:[Lcom/google/glass/maps/SchematicSegment;

    array-length v15, v14

    const/4 v2, 0x0

    move v10, v2

    move v11, v3

    :goto_1
    if-ge v10, v15, :cond_0

    aget-object v16, v14, v10

    const/4 v9, 0x0

    sget-object v2, Lcom/google/glass/maps/bu;->a:[I

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {v3}, Lcom/google/glass/maps/SchematicSegment$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_2
    add-int v3, v11, v9

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    :pswitch_0
    sget v2, Lcom/google/glass/maps/SchematicView;->e:I

    sget v3, Lcom/google/glass/maps/SchematicView;->g:I

    add-int/2addr v2, v3

    int-to-float v5, v2

    sget v2, Lcom/google/glass/maps/SchematicView;->g:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    const/high16 v3, 0x3f80

    sub-float v4, v2, v3

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v3, Lcom/google/glass/maps/SchematicView;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_3
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FI)V

    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FFIZ)V

    goto :goto_2

    :cond_3
    sget v2, Lcom/google/glass/maps/SchematicView;->g:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/google/glass/maps/SchematicView;->a(ILcom/google/glass/maps/SchematicSegment;)I

    move-result v2

    sub-int v3, v2, v13

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    move v9, v2

    move v2, v3

    goto :goto_3

    :pswitch_1
    if-eqz v8, :cond_4

    const/4 v4, 0x0

    sget v2, Lcom/google/glass/maps/SchematicView;->e:I

    int-to-float v2, v2

    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FFIZ)V

    sget v2, Lcom/google/glass/maps/SchematicView;->e:I

    sget v3, Lcom/google/glass/maps/SchematicView;->g:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    :goto_4
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FI)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v3, Lcom/google/glass/maps/SchematicView;->e:I

    sub-int/2addr v2, v3

    sget v3, Lcom/google/glass/maps/SchematicView;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    goto :goto_4

    :pswitch_2
    if-eqz v8, :cond_5

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FFIZ)V

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    sget v2, Lcom/google/glass/maps/SchematicView;->e:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FFIZ)V

    goto/16 :goto_2

    :pswitch_3
    sget v2, Lcom/google/glass/maps/SchematicView;->g:I

    add-int/2addr v2, v11

    int-to-float v3, v2

    sget v2, Lcom/google/glass/maps/SchematicView;->g:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    const/high16 v4, 0x3f80

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/SchematicView;->i:[Lcom/google/glass/maps/SchematicSegment;

    array-length v2, v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v5, Lcom/google/glass/maps/SchematicView;->e:I

    sub-int/2addr v2, v5

    move v9, v2

    :goto_5
    sub-int v2, v9, v13

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, v16

    iget v5, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FI)V

    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->b:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->c:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->a(Landroid/graphics/Canvas;FFIZ)V

    goto/16 :goto_2

    :cond_6
    sget v2, Lcom/google/glass/maps/SchematicView;->g:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/google/glass/maps/SchematicView;->a(ILcom/google/glass/maps/SchematicSegment;)I

    move-result v2

    move v9, v2

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSegments([Lcom/google/glass/maps/SchematicSegment;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/glass/maps/SchematicView;->a([Lcom/google/glass/maps/SchematicSegment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/google/glass/maps/SchematicView;->i:[Lcom/google/glass/maps/SchematicSegment;

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->j:I

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    iget-object v3, v2, Lcom/google/glass/maps/SchematicSegment;->a:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v4, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/maps/SchematicView;->j:I

    int-to-long v3, v3

    iget-wide v5, v2, Lcom/google/glass/maps/SchematicSegment;->d:J

    add-long v2, v3, v5

    long-to-int v2, v2

    iput v2, p0, Lcom/google/glass/maps/SchematicView;->j:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
