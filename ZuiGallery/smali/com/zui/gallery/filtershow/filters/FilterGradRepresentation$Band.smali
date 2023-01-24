.class Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;
.super Ljava/lang/Object;
.source "FilterGradRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Band"
.end annotation


# instance fields
.field private brightness:I

.field private contrast:I

.field private mask:Z

.field private saturation:I

.field private xPos1:I

.field private xPos2:I

.field private yPos1:I

.field private yPos2:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->mask:Z

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    const/16 v1, 0x64

    .line 68
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    .line 69
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    .line 70
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    const/16 v0, -0x28

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->brightness:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->contrast:I

    .line 73
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->saturation:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->mask:Z

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    const/16 v1, 0x64

    .line 68
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    .line 69
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    .line 70
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    const/16 v0, -0x28

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->brightness:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->contrast:I

    .line 73
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->saturation:I

    .line 80
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    add-int/lit8 v0, p2, 0x1e

    .line 81
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    .line 82
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    add-int/lit8 p2, p2, -0x1e

    .line 83
    iput p2, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->mask:Z

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    const/16 v1, 0x64

    .line 68
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    .line 69
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    .line 70
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    const/16 v0, -0x28

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->brightness:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->contrast:I

    .line 73
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->saturation:I

    .line 87
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->mask:Z

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->mask:Z

    .line 88
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    .line 89
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    .line 90
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    .line 91
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    .line 92
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->brightness:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->brightness:I

    .line 93
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->contrast:I

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->contrast:I

    .line 94
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->saturation:I

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->saturation:I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->mask:Z

    return p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->mask:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    return p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    return p1
.end method

.method static synthetic access$118(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    int-to-double v0, v0

    add-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos1:I

    return p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    return p1
.end method

.method static synthetic access$218(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    int-to-double v0, v0

    add-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos1:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    return p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    return p1
.end method

.method static synthetic access$318(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    int-to-double v0, v0

    add-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->xPos2:I

    return p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    return p1
.end method

.method static synthetic access$418(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;D)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    int-to-double v0, v0

    add-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->yPos2:I

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->brightness:I

    return p0
.end method

.method static synthetic access$502(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->brightness:I

    return p1
.end method

.method static synthetic access$600(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->contrast:I

    return p0
.end method

.method static synthetic access$602(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->contrast:I

    return p1
.end method

.method static synthetic access$700(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->saturation:I

    return p0
.end method

.method static synthetic access$702(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation$Band;->saturation:I

    return p1
.end method
