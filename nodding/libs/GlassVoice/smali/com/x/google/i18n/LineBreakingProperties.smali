.class public Lcom/x/google/i18n/LineBreakingProperties;
.super Ljava/lang/Object;


# static fields
.field static final AI:B = 0x13t

.field static final AL:B = 0x8t

.field static final B2:B = 0x1bt

.field static final BA:B = 0x1t

.field static final BB:B = 0x14t

.field static final BK:B = 0x3t

.field static final CB:B = 0x23t

.field static final CL:B = 0xct

.field static final CM:B = 0x0t

.field private static final COMMAND_MASK:B = -0x40t

.field static final CR:B = 0x4t

.field private static final ENTRY_COUNT:I = 0x680

.field static final EX:B = 0x6t

.field static final GL:B = 0x12t

.field static final H2:B = 0x1ft

.field static final H3:B = 0x20t

.field static final HY:B = 0xet

.field static final ID:B = 0x1et

.field static final IN:B = 0x1ct

.field static final IS:B = 0xdt

.field static final JL:B = 0x16t

.field static final JT:B = 0x18t

.field static final JV:B = 0x17t

.field static final LF:B = 0x2t

.field private static final LITERAL:B = -0x40t

.field private static final LITERAL_IS_1:B = 0x40t

.field private static final LITERAL_IS_2:B = -0x80t

.field static final NL:B = 0x11t

.field static final NS:B = 0x19t

.field static final NU:B = 0x10t

.field static final OP:B = 0xbt

.field private static final PAIR_COPY:B = 0x0t

.field static final PO:B = 0xat

.field static final PR:B = 0x9t

.field static final QU:B = 0x7t

.field static final SA:B = 0x15t

.field static final SG:B = 0x21t

.field static final SP:B = 0x5t

.field static final SY:B = 0xft

.field static final WJ:B = 0x1dt

.field static final XX:B = 0x22t

.field static final ZW:B = 0x1at

.field static codePoints:[C

.field private static initialized:Z

.field private static lastCharAndClass:I

.field static lineBreakingClasses:[B

.field private static final packed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x4d0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    sput-object v1, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    sput-object v1, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/x/google/i18n/LineBreakingProperties;->initialized:Z

    return-void

    :array_0
    .array-data 0x1
        0xc0t
        0x0t
        0xc1t
        0x9t
        0x42t
        0x43t
        0x84t
        0x40t
        0xc5t
        0x12t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x48t
        0x47t
        0x4bt
        0x4ct
        0x48t
        0x49t
        0x4dt
        0x4et
        0x4dt
        0x4ft
        0x50t
        0xcdt
        0xat
        0x88t
        0xc6t
        0x3t
        0x48t
        0xcbt
        0x1bt
        0x49t
        0x4ct
        0x48t
        0xcbt
        0x1dt
        0x41t
        0x4ct
        0x48t
        0x40t
        0xd1t
        0x6t
        0x40t
        0xd2t
        0x1at
        0x4bt
        0x4at
        0x49t
        0xc8t
        0x3t
        0x53t
        0x88t
        0x53t
        0x47t
        0x48t
        0x41t
        0x48t
        0x8at
        0x49t
        0x53t
        0x94t
        0x48t
        0x53t
        0xc7t
        0x5t
        0x53t
        0xcbt
        0x3t
        0x48t
        0xd3t
        0x17t
        0x48t
        0xd3t
        0x1ft
        0x48t
        0xd3t
        0xcft
        0x3t
        0x54t
        0x53t
        0xd4t
        0x3t
        0x53t
        0x48t
        0x93t
        0x48t
        0xd3t
        0x7t
        0xc8t
        0x4t
        0x53t
        0x48t
        0x54t
        0x48t
        0xc0t
        0x20t
        0xd2t
        0x4ft
        0x40t
        0xd2t
        0xct
        0xc0t
        0x7t
        0xc8t
        0xdt
        0xcdt
        0xet
        0xc8t
        0x6t
        0xc0t
        0xfft
        0x1t
        0xc8t
        0x7t
        0xcdt
        0xfft
        0x1t
        0x41t
        0xc0t
        0x7t
        0xc1t
        0x2dt
        0x40t
        0x48t
        0x40t
        0x88t
        0x40t
        0x86t
        0x40t
        0xc8t
        0x9t
        0xcat
        0x39t
        0xcdt
        0x3t
        0x88t
        0x80t
        0xc6t
        0xbt
        0xc8t
        0x6t
        0xc0t
        0x2at
        0xd0t
        0x15t
        0xcat
        0xat
        0x50t
        0x88t
        0xc0t
        0x3t
        0x48t
        0xc6t
        0x63t
        0x48t
        0x40t
        0xc8t
        0x7t
        0x2t
        0x80t
        0x88t
        0x40t
        0xc8t
        0x4t
        0x90t
        0xc8t
        0xat
        0xc0t
        0x17t
        0x48t
        0xc0t
        0x1et
        0xc8t
        0x1dt
        0xc0t
        0x59t
        0xc8t
        0xbt
        0xd0t
        0xft
        0xc8t
        0xat
        0xc0t
        0x21t
        0xc8t
        0x9t
        0xcdt
        0x4t
        0x46t
        0x48t
        0xc0t
        0x87t
        0x2t
        0xc8t
        0x3t
        0xc0t
        0x38t
        0x48t
        0x40t
        0xc8t
        0x12t
        0x40t
        0xc8t
        0x7t
        0xc0t
        0xat
        0x81t
        0x90t
        0xc8t
        0xat
        0xc0t
        0x11t
        0xc8t
        0x4t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x10t
        0xc0t
        0x9t
        0xc8t
        0x5t
        0xc0t
        0x6t
        0xd0t
        0x4t
        0xc8t
        0xat
        0x89t
        0x88t
        0xc0t
        0xdt
        0xc8t
        0x4t
        0xc0t
        0x37t
        0xc8t
        0x1dt
        0xd0t
        0xdt
        0xc0t
        0xat
        0x88t
        0xc0t
        0x3t
        0xc8t
        0x10t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x12t
        0xc0t
        0x12t
        0xd0t
        0x4t
        0xc9t
        0xbt
        0xc0t
        0x10t
        0xc8t
        0x4t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x1et
        0xd0t
        0xat
        0xc8t
        0xat
        0xc0t
        0x12t
        0x48t
        0xc0t
        0x3bt
        0xc8t
        0x12t
        0xc0t
        0x7t
        0xd0t
        0xft
        0xc8t
        0xat
        0xc9t
        0x9t
        0x48t
        0xc0t
        0x7t
        0xc8t
        0x4t
        0xc0t
        0x39t
        0xc8t
        0x1at
        0xc0t
        0xat
        0xd0t
        0x4t
        0xc8t
        0x12t
        0xc0t
        0xat
        0xc8t
        0x3t
        0xc0t
        0x37t
        0x48t
        0x40t
        0xc8t
        0x20t
        0xc0t
        0x4t
        0xd0t
        0x4t
        0xc8t
        0xbt
        0xc0t
        0x11t
        0xc8t
        0x3t
        0xc0t
        0x39t
        0xc8t
        0x22t
        0x80t
        0xd0t
        0x4t
        0xc8t
        0xat
        0xcat
        0x9t
        0xc0t
        0x9t
        0xc8t
        0x3t
        0xc0t
        0x45t
        0xc8t
        0x2at
        0xd5t
        0xdt
        0xc9t
        0x3et
        0x55t
        0xc8t
        0xft
        0x50t
        0xc1t
        0xat
        0xd5t
        0x27t
        0xd0t
        0x4ft
        0xd5t
        0xct
        0xc8t
        0x24t
        0x54t
        0xc8t
        0x4t
        0x54t
        0x92t
        0x54t
        0x81t
        0x52t
        0x46t
        0xd2t
        0x5t
        0x48t
        0x46t
        0x48t
        0xc0t
        0x3t
        0x88t
        0xd0t
        0x6t
        0xc8t
        0xat
        0xc1t
        0xat
        0x40t
        0x48t
        0x2t
        0x40t
        0x4bt
        0x4ct
        0x2t
        0x40t
        0x88t
        0xc0t
        0x31t
        0xc1t
        0xet
        0x40t
        0xc1t
        0x5t
        0x40t
        0x88t
        0xc0t
        0x8t
        0xc1t
        0x2et
        0x88t
        0xc0t
        0x6t
        0x48t
        0xd4t
        0x9t
        0x81t
        0x54t
        0x48t
        0xd5t
        0x2ct
        0xd0t
        0x40t
        0xc1t
        0xat
        0x88t
        0xd5t
        0x4t
        0xc8t
        0x50t
        0xd6t
        0x60t
        0xd7t
        0x60t
        0xd8t
        0x48t
        0xc8t
        0x58t
        0xc0t
        0xdft
        0x2t
        0x48t
        0x41t
        0x48t
        0xc1t
        0x9et
        0x6t
        0x48t
        0xcbt
        0x1at
        0x4ct
        0xc8t
        0x4t
        0xc1t
        0x4bt
        0xc8t
        0x3t
        0xc0t
        0x24t
        0xc8t
        0xet
        0xc0t
        0x12t
        0xc1t
        0x3t
        0xc8t
        0xbt
        0xc0t
        0x12t
        0xc8t
        0xet
        0xc0t
        0x12t
        0xd5t
        0xet
        0xc1t
        0x54t
        0x99t
        0x55t
        0x41t
        0x48t
        0x41t
        0x49t
        0x55t
        0xd0t
        0x4t
        0xc8t
        0x10t
        0xc6t
        0x12t
        0x81t
        0x94t
        0x48t
        0x46t
        0x88t
        0x40t
        0xd2t
        0x3t
        0x90t
        0xc8t
        0x10t
        0xc0t
        0x89t
        0x1t
        0x48t
        0xc0t
        0x76t
        0xc8t
        0x20t
        0xc6t
        0x4t
        0x90t
        0xd5t
        0xat
        0xd0t
        0x80t
        0x1t
        0xd5t
        0xet
        0x88t
        0xc0t
        0x37t
        0xc8t
        0x7t
        0xc0t
        0xe2t
        0x1t
        0xc8t
        0x5t
        0xc0t
        0x2ft
        0xc8t
        0x11t
        0xd0t
        0xbt
        0xc1t
        0xat
        0xc8t
        0x7t
        0xc0t
        0xat
        0xc8t
        0x9t
        0xc0t
        0xct
        0xc8t
        0x3t
        0xc0t
        0x1et
        0xc8t
        0xdt
        0x90t
        0xc8t
        0x50t
        0xc0t
        0x24t
        0xc1t
        0x17t
        0xd0t
        0x5t
        0xc8t
        0xdt
        0xd0t
        0x3t
        0xc8t
        0xat
        0xc1t
        0x24t
        0xc8t
        0x82t
        0x1t
        0xc0t
        0xc0t
        0x1t
        0xc8t
        0x40t
        0xd4t
        0xfdt
        0x3t
        0x48t
        0x81t
        0xd2t
        0x7t
        0x41t
        0xdat
        0x3t
        0x40t
        0xc1t
        0x4t
        0x52t
        0x41t
        0x9bt
        0x53t
        0x88t
        0x47t
        0x8bt
        0x47t
        0xcbt
        0x3t
        0x47t
        0x53t
        0x88t
        0x9ct
        0xc1t
        0x3t
        0x43t
        0x80t
        0xd2t
        0x5t
        0x4at
        0xc8t
        0x8t
        0x47t
        0x93t
        0x59t
        0x88t
        0xcdt
        0x6t
        0x4bt
        0x4ct
        0x59t
        0xc8t
        0x3t
        0xc1t
        0xct
        0x48t
        0x41t
        0xc8t
        0x4t
        0x41t
        0xddt
        0x3t
        0x48t
        0xc0t
        0x9t
        0xc8t
        0x6t
        0xd3t
        0x4t
        0x48t
        0xcbt
        0x8t
        0x4ct
        0x53t
        0x48t
        0x53t
        0xc8t
        0x4t
        0xcbt
        0x8t
        0x4ct
        0x88t
        0xc9t
        0x10t
        0xcat
        0x7t
        0x49t
        0xc0t
        0x28t
        0xc8t
        0x30t
        0xcat
        0x3t
        0x48t
        0x53t
        0x48t
        0xcat
        0x3t
        0x48t
        0xd3t
        0x9t
        0x48t
        0x89t
        0x48t
        0xd3t
        0xat
        0x88t
        0xd3t
        0x8t
        0x48t
        0xd3t
        0x28t
        0x88t
        0xd3t
        0x5t
        0x48t
        0x93t
        0x48t
        0x53t
        0xc8t
        0xct
        0xd3t
        0x4t
        0xc8t
        0xat
        0xd3t
        0x16t
        0xc8t
        0xat
        0xd3t
        0x38t
        0x48t
        0x53t
        0x48t
        0xd3t
        0x2bt
        0x48t
        0x53t
        0x88t
        0xd3t
        0x3t
        0x88t
        0x93t
        0x48t
        0xd3t
        0x3t
        0x48t
        0x53t
        0x49t
        0x88t
        0x53t
        0x48t
        0xd3t
        0x4t
        0x48t
        0x93t
        0xc8t
        0x4t
        0x93t
        0x48t
        0x53t
        0x2t
        0xc8t
        0x6t
        0x53t
        0x48t
        0xd3t
        0x5t
        0xc8t
        0x4t
        0xd3t
        0x4t
        0x88t
        0xd3t
        0xat
        0x48t
        0xd3t
        0x3t
        0x48t
        0xd3t
        0x5t
        0x48t
        0xd3t
        0xdt
        0x88t
        0x93t
        0xc8t
        0x4t
        0x93t
        0x88t
        0x2t
        0xd3t
        0x12t
        0x88t
        0x93t
        0x88t
        0xd3t
        0xdt
        0x48t
        0xd3t
        0x3t
        0x48t
        0xd3t
        0xbt
        0x48t
        0xd3t
        0x19t
        0x48t
        0xd3t
        0x52t
        0x48t
        0xcbt
        0x16t
        0x4ct
        0x48t
        0xd3t
        0xb5t
        0x2t
        0xc8t
        0x9ft
        0x1t
        0x53t
        0xc8t
        0x4ct
        0xd3t
        0x4t
        0xc8t
        0x25t
        0xd3t
        0xbt
        0xc8t
        0x10t
        0x93t
        0xc8t
        0x4t
        0xd3t
        0xat
        0x88t
        0x53t
        0xc8t
        0x7t
        0xd3t
        0x8t
        0x88t
        0x93t
        0x88t
        0xd3t
        0x4t
        0x4t
        0xc8t
        0x3t
        0x93t
        0x48t
        0x93t
        0xc8t
        0x4t
        0xd3t
        0x10t
        0xc8t
        0x4t
        0xd3t
        0x9t
        0x48t
        0xd3t
        0x15t
        0x88t
        0x93t
        0x48t
        0xd3t
        0x4t
        0x88t
        0xd3t
        0x4t
        0xc8t
        0x4t
        0xd3t
        0x4t
        0x48t
        0x53t
        0x48t
        0xd3t
        0x21t
        0x48t
        0x53t
        0x48t
        0xd3t
        0x1dt
        0x88t
        0x53t
        0xc8t
        0x3t
        0x53t
        0xc8t
        0x4t
        0x53t
        0x88t
        0x53t
        0x48t
        0xc7t
        0xebt
        0x1t
        0xc8t
        0x6t
        0x46t
        0x88t
        0xcbt
        0x4t
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x4t
        0x4ct
        0x53t
        0xc8t
        0x1et
        0xcbt
        0x31t
        0x4ct
        0x48t
        0xcbt
        0x1ft
        0x4ct
        0x4bt
        0x2t
        0x2t
        0x4ct
        0xc8t
        0x3t
        0xcbt
        0x93t
        0x3t
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x8t
        0x4t
        0x4ct
        0x48t
        0xcbt
        0x3ft
        0x4ct
        0x4bt
        0x4ct
        0x48t
        0xcbt
        0x20t
        0x4ct
        0x48t
        0xc6t
        0xfbt
        0x5t
        0x41t
        0xc8t
        0x3t
        0x46t
        0x41t
        0x48t
        0xc7t
        0x80t
        0x2t
        0xc1t
        0xet
        0xc8t
        0x8t
        0x41t
        0x4bt
        0xc7t
        0x4t
        0xdet
        0x64t
        0xcct
        0x81t
        0x3t
        0x9et
        0x99t
        0x5et
        0x8bt
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x4ct
        0x5et
        0x8bt
        0x4ct
        0x4bt
        0x2t
        0x2t
        0x4ct
        0x59t
        0x4bt
        0x4ct
        0x9et
        0xc0t
        0xat
        0xdet
        0x6t
        0xd9t
        0xbt
        0x9et
        0xd9t
        0x4t
        0x5et
        0x59t
        0x2t
        0x4t
        0x5et
        0xd9t
        0x19t
        0x5et
        0xd9t
        0x1ft
        0x5et
        0x59t
        0x2t
        0x5et
        0xd9t
        0x6t
        0x2t
        0xc0t
        0x4t
        0x99t
        0xdet
        0x4t
        0x59t
        0x9et
        0x59t
        0x5et
        0x2t
        0x4t
        0xd9t
        0x19t
        0x5et
        0xd9t
        0x1ft
        0x5et
        0x59t
        0x2t
        0x5et
        0xd9t
        0x6t
        0x2t
        0x9et
        0xd9t
        0x4t
        0xdet
        0x4t
        0xd9t
        0xf1t
        0x1t
        0xdet
        0x10t
        0xc8t
        0xc0t
        0x37t
        0xdet
        0x40t
        0xd9t
        0x95t
        0xa4t
        0x1t
        0x5et
        0xc8t
        0xeat
        0x9t
        0xc6t
        0x8ct
        0x2t
        0x41t
        0x46t
        0x41t
        0x48t
        0xd0t
        0x10t
        0xc8t
        0xat
        0xc0t
        0xd8t
        0x3t
        0x48t
        0xc0t
        0x3t
        0x48t
        0xc0t
        0x4t
        0x48t
        0xc0t
        0x17t
        0xc8t
        0x5t
        0xd4t
        0x4ct
        0x86t
        0xc0t
        0xat
        0x88t
        0xc0t
        0x32t
        0xc1t
        0x1at
        0x90t
        0xc8t
        0x3at
        0xc0t
        0x1ct
        0xc1t
        0x8t
        0x88t
        0xc0t
        0x17t
        0xc8t
        0x18t
        0xdft
        0xa1t
        0x5t
        0x60t
        0xdft
        0x1bt
        0x2t
        0x4t
        0x8t
        0x10t
        0x20t
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x3et
        0x32t
        0x60t
        0xe1t
        0x77t
        0xe2t
        0x80t
        0x10t
        0xdet
        0x80t
        0x32t
        0xc8t
        0x80t
        0x4t
        0xc0t
        0x1et
        0x48t
        0xcbt
        0x9ft
        0x4t
        0x4ct
        0xc8t
        0x11t
        0xcat
        0xact
        0x1t
        0x48t
        0xc0t
        0x3t
        0xcdt
        0x10t
        0x4ct
        0x8dt
        0x86t
        0x8bt
        0x4ct
        0x5ct
        0xc0t
        0x7t
        0xdet
        0x10t
        0xcbt
        0x5t
        0x4ct
        0x4bt
        0x2t
        0x4t
        0x6t
        0x4ct
        0x5et
        0x8bt
        0x4ct
        0x5et
        0xcct
        0x7t
        0x5et
        0x4ct
        0x99t
        0x86t
        0x9et
        0x4bt
        0x4ct
        0x2t
        0x2t
        0x5et
        0xc9t
        0xat
        0x4at
        0x5et
        0xc8t
        0x5t
        0xddt
        0x8ft
        0x1t
        0x86t
        0x5et
        0x89t
        0x4at
        0x5et
        0x8bt
        0x4ct
        0x5et
        0x8ct
        0x5et
        0x4ct
        0x5et
        0xd9t
        0xbt
        0x9et
        0xc6t
        0x3t
        0x5et
        0xcbt
        0x1bt
        0x5et
        0x4ct
        0x5et
        0xcbt
        0x1dt
        0x5et
        0x4ct
        0x5et
        0x4bt
        0x4ct
        0x8bt
        0x4ct
        0x99t
        0x48t
        0x59t
        0xc8t
        0xat
        0xd9t
        0x2dt
        0x88t
        0xcat
        0x40t
        0x49t
        0x5et
        0xc9t
        0x3t
        0xc8t
        0x3t
        0xc0t
        0x11t
        0xe3t
        0x3t
        0x53t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assignClass(C)I
    .locals 3

    const/16 v0, 0x8

    sget-object v1, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v2, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    invoke-static {p0, v2}, Lcom/x/google/i18n/LineBreakingProperties;->binarySearch(C[C)I

    move-result v2

    aget-byte v1, v1, v2

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_0
    const/16 v1, 0x3033

    if-lt p0, v1, :cond_1

    const/16 v1, 0x3035

    if-gt p0, v1, :cond_1

    const/16 v0, 0x1c

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    const/16 v0, 0x1e

    goto :goto_0

    :cond_3
    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static binarySearch(C[C)I
    .locals 4

    const/4 v2, 0x0

    array-length v0, p1

    :goto_0
    sub-int v1, v0, v2

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    sub-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    aget-char v3, p1, v1

    if-lt p0, v3, :cond_0

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_2

    aget-char v0, p1, v2

    if-lt p0, v0, :cond_2

    :goto_2
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public static canBreak(CC)Z
    .locals 8

    const/16 v7, 0xa

    const/4 v1, 0x1

    const/16 v6, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-boolean v0, Lcom/x/google/i18n/LineBreakingProperties;->initialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/x/google/i18n/LineBreakingProperties;->initialize()V

    :cond_0
    sget v0, Lcom/x/google/i18n/LineBreakingProperties;->lastCharAndClass:I

    const v4, 0xffff

    and-int/2addr v4, v0

    if-ne v4, p0, :cond_1

    shr-int/lit8 v0, v0, 0x10

    :goto_0
    invoke-static {p1}, Lcom/x/google/i18n/LineBreakingProperties;->assignClass(C)I

    move-result v4

    shl-int/lit8 v5, v4, 0x10

    or-int/2addr v5, p1

    sput v5, Lcom/x/google/i18n/LineBreakingProperties;->lastCharAndClass:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-static {p0}, Lcom/x/google/i18n/LineBreakingProperties;->assignClass(C)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/16 v5, 0x11

    if-ne v0, v5, :cond_5

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/16 v5, 0x11

    if-ne v4, v5, :cond_7

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    const/4 v5, 0x5

    if-eq v4, v5, :cond_8

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_9

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_a

    move v0, v1

    goto :goto_1

    :cond_a
    if-nez v0, :cond_40

    move v5, v3

    :goto_2
    if-nez v4, :cond_3f

    move v0, v3

    :goto_3
    const/16 v4, 0x1d

    if-eq v0, v4, :cond_b

    const/16 v4, 0x1d

    if-ne v5, v4, :cond_c

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    const/4 v4, 0x5

    if-eq v5, v4, :cond_d

    const/16 v4, 0x12

    if-eq v0, v4, :cond_e

    :cond_d
    const/16 v4, 0x12

    if-ne v5, v4, :cond_f

    :cond_e
    move v0, v2

    goto :goto_1

    :cond_f
    const/16 v4, 0xc

    if-eq v0, v4, :cond_10

    const/4 v4, 0x6

    if-eq v0, v4, :cond_10

    const/16 v4, 0xd

    if-eq v0, v4, :cond_10

    const/16 v4, 0xf

    if-ne v0, v4, :cond_11

    :cond_10
    move v0, v2

    goto :goto_1

    :cond_11
    const/16 v4, 0xb

    if-ne v5, v4, :cond_12

    move v0, v2

    goto :goto_1

    :cond_12
    const/4 v4, 0x7

    if-ne v5, v4, :cond_13

    const/16 v4, 0xb

    if-ne v0, v4, :cond_13

    move v0, v2

    goto :goto_1

    :cond_13
    const/16 v4, 0xc

    if-ne v5, v4, :cond_14

    const/16 v4, 0x19

    if-ne v0, v4, :cond_14

    move v0, v2

    goto :goto_1

    :cond_14
    const/16 v4, 0x1b

    if-ne v5, v4, :cond_15

    const/16 v4, 0x1b

    if-ne v0, v4, :cond_15

    move v0, v2

    goto/16 :goto_1

    :cond_15
    const/4 v4, 0x5

    if-ne v5, v4, :cond_16

    move v0, v1

    goto/16 :goto_1

    :cond_16
    const/4 v4, 0x7

    if-eq v0, v4, :cond_17

    const/4 v4, 0x7

    if-ne v5, v4, :cond_18

    :cond_17
    move v0, v2

    goto/16 :goto_1

    :cond_18
    const/16 v4, 0x23

    if-eq v0, v4, :cond_19

    const/16 v4, 0x23

    if-ne v5, v4, :cond_1a

    :cond_19
    move v0, v1

    goto/16 :goto_1

    :cond_1a
    if-eq v0, v1, :cond_1b

    const/16 v4, 0xe

    if-eq v0, v4, :cond_1b

    const/16 v4, 0x19

    if-eq v0, v4, :cond_1b

    const/16 v4, 0x14

    if-ne v5, v4, :cond_1c

    :cond_1b
    move v0, v2

    goto/16 :goto_1

    :cond_1c
    if-eq v5, v3, :cond_1d

    const/16 v4, 0x1e

    if-eq v5, v4, :cond_1d

    const/16 v4, 0x1c

    if-eq v5, v4, :cond_1d

    if-ne v5, v6, :cond_1e

    :cond_1d
    const/16 v4, 0x1c

    if-ne v0, v4, :cond_1e

    move v0, v2

    goto/16 :goto_1

    :cond_1e
    const/16 v4, 0x1e

    if-ne v5, v4, :cond_1f

    if-eq v0, v7, :cond_21

    :cond_1f
    if-ne v5, v3, :cond_20

    if-eq v0, v6, :cond_21

    :cond_20
    if-ne v5, v6, :cond_22

    if-ne v0, v3, :cond_22

    :cond_21
    move v0, v2

    goto/16 :goto_1

    :cond_22
    const/16 v4, 0x9

    if-ne v5, v4, :cond_23

    const/16 v4, 0x1e

    if-eq v0, v4, :cond_24

    if-eq v0, v3, :cond_24

    :cond_23
    if-ne v5, v7, :cond_25

    if-ne v0, v3, :cond_25

    :cond_24
    move v0, v2

    goto/16 :goto_1

    :cond_25
    const/16 v4, 0xc

    if-eq v5, v4, :cond_26

    if-ne v5, v6, :cond_27

    :cond_26
    if-eq v0, v7, :cond_2b

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2b

    :cond_27
    if-eq v5, v7, :cond_28

    const/16 v4, 0x9

    if-ne v5, v4, :cond_29

    :cond_28
    const/16 v4, 0xb

    if-eq v0, v4, :cond_2b

    if-eq v0, v6, :cond_2b

    :cond_29
    const/16 v4, 0xe

    if-eq v5, v4, :cond_2a

    const/16 v4, 0xd

    if-eq v5, v4, :cond_2a

    if-eq v5, v6, :cond_2a

    const/16 v4, 0xf

    if-ne v5, v4, :cond_2c

    :cond_2a
    if-ne v0, v6, :cond_2c

    :cond_2b
    move v0, v2

    goto/16 :goto_1

    :cond_2c
    const/16 v4, 0x16

    if-ne v5, v4, :cond_2d

    const/16 v4, 0x16

    if-eq v0, v4, :cond_31

    const/16 v4, 0x17

    if-eq v0, v4, :cond_31

    const/16 v4, 0x1f

    if-eq v0, v4, :cond_31

    const/16 v4, 0x20

    if-eq v0, v4, :cond_31

    :cond_2d
    const/16 v4, 0x17

    if-eq v5, v4, :cond_2e

    const/16 v4, 0x1f

    if-ne v5, v4, :cond_2f

    :cond_2e
    const/16 v4, 0x17

    if-eq v0, v4, :cond_31

    const/16 v4, 0x18

    if-eq v0, v4, :cond_31

    :cond_2f
    const/16 v4, 0x18

    if-eq v5, v4, :cond_30

    const/16 v4, 0x20

    if-ne v5, v4, :cond_32

    :cond_30
    const/16 v4, 0x18

    if-ne v0, v4, :cond_32

    :cond_31
    move v0, v2

    goto/16 :goto_1

    :cond_32
    const/16 v4, 0x16

    if-eq v5, v4, :cond_33

    const/16 v4, 0x17

    if-eq v5, v4, :cond_33

    const/16 v4, 0x18

    if-eq v5, v4, :cond_33

    const/16 v4, 0x1f

    if-eq v5, v4, :cond_33

    const/16 v4, 0x20

    if-ne v5, v4, :cond_34

    :cond_33
    const/16 v4, 0x1c

    if-eq v0, v4, :cond_35

    if-eq v0, v7, :cond_35

    :cond_34
    const/16 v4, 0x9

    if-ne v5, v4, :cond_36

    const/16 v4, 0x16

    if-eq v0, v4, :cond_35

    const/16 v4, 0x17

    if-eq v0, v4, :cond_35

    const/16 v4, 0x18

    if-eq v0, v4, :cond_35

    const/16 v4, 0x1f

    if-eq v0, v4, :cond_35

    const/16 v4, 0x20

    if-ne v0, v4, :cond_36

    :cond_35
    move v0, v2

    goto/16 :goto_1

    :cond_36
    if-ne v5, v3, :cond_37

    if-ne v0, v3, :cond_37

    move v0, v2

    goto/16 :goto_1

    :cond_37
    const/16 v4, 0xd

    if-ne v5, v4, :cond_38

    if-ne v0, v3, :cond_38

    move v0, v2

    goto/16 :goto_1

    :cond_38
    const/16 v4, 0xc

    if-ne v5, v4, :cond_3a

    if-ne v0, v3, :cond_3a

    const/16 v4, 0x3001

    if-eq p0, v4, :cond_39

    const/16 v4, 0x3002

    if-ne p0, v4, :cond_3a

    :cond_39
    move v0, v1

    goto/16 :goto_1

    :cond_3a
    if-eq v5, v3, :cond_3b

    if-ne v5, v6, :cond_3c

    :cond_3b
    const/16 v4, 0xb

    if-eq v0, v4, :cond_3d

    :cond_3c
    const/16 v4, 0xc

    if-ne v5, v4, :cond_3e

    if-eq v0, v3, :cond_3d

    if-ne v0, v6, :cond_3e

    :cond_3d
    move v0, v2

    goto/16 :goto_1

    :cond_3e
    move v0, v1

    goto/16 :goto_1

    :cond_3f
    move v0, v4

    goto/16 :goto_3

    :cond_40
    move v5, v0

    goto/16 :goto_2
.end method

.method private static declared-synchronized initialize()V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v8, Lcom/x/google/i18n/LineBreakingProperties;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lcom/x/google/i18n/LineBreakingProperties;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v8

    return-void

    :cond_0
    const/16 v0, 0x680

    :try_start_1
    new-array v0, v0, [C

    sput-object v0, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    const/16 v0, 0x680

    new-array v0, v0, [B

    sput-object v0, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    move v4, v3

    move v7, v3

    :goto_1
    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    array-length v0, v0

    if-ge v4, v0, :cond_6

    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, -0x40

    if-nez v0, :cond_2

    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v0, v0, v4

    and-int/lit8 v5, v0, 0x3f

    move v0, v3

    move v1, v7

    :goto_2
    if-ge v0, v5, :cond_1

    sget-object v6, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    sget-object v7, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    sub-int v9, v1, v5

    aget-char v7, v7, v9

    aput-char v7, v6, v1

    sget-object v6, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v7, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sub-int v9, v1, v5

    aget-byte v7, v7, v9

    aput-byte v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v4, 0x1

    :goto_3
    move v4, v0

    move v7, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    const/4 v1, 0x1

    aput-char v1, v0, v7

    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v1, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v0, v4, 0x1

    goto :goto_3

    :cond_3
    const/16 v1, -0x80

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    const/4 v1, 0x2

    aput-char v1, v0, v7

    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v1, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v0, v4, 0x1

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->lineBreakingClasses:[B

    sget-object v1, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    add-int/lit8 v0, v4, 0x1

    move v1, v3

    move v6, v0

    move v0, v3

    :goto_4
    sget-object v4, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v4, v4, v6

    and-int/lit8 v4, v4, 0x7f

    shl-int/2addr v4, v1

    add-int/2addr v0, v4

    int-to-char v4, v0

    add-int/lit8 v5, v1, 0x7

    sget-object v0, Lcom/x/google/i18n/LineBreakingProperties;->packed:[B

    aget-byte v0, v0, v6

    and-int/lit8 v0, v0, -0x80

    if-eqz v0, :cond_5

    move v1, v2

    :goto_5
    add-int/lit8 v0, v6, 0x1

    if-nez v1, :cond_8

    sget-object v1, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    aput-char v4, v1, v7

    add-int/lit8 v1, v7, 0x1

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_6
    sget-object v1, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    array-length v1, v1

    if-ge v0, v1, :cond_7

    sget-object v1, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    aget-char v2, v1, v0

    sget-object v3, Lcom/x/google/i18n/LineBreakingProperties;->codePoints:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/x/google/i18n/LineBreakingProperties;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_8
    move v1, v5

    move v6, v0

    move v0, v4

    goto :goto_4
.end method
