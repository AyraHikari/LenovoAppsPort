.class Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;
.super Ljava/lang/Object;
.source "NvAndroidTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerticalLayoutContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;
    }
.end annotation


# instance fields
.field public currentGlyphCountInLine:I

.field public currentLineHeight:F

.field public firstLine:Z

.field public height:F

.field public lineInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public width:F

.field public xCenter:F

.field public xOrigin:F

.field public yOrigin:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cdv/text/NvAndroidTextLayout$1;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;-><init>()V

    return-void
.end method


# virtual methods
.method public moveToNextLine(Landroid/graphics/Paint$FontMetrics;FF)V
    .locals 2

    .line 317
    new-instance v0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;

    invoke-direct {v0}, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;-><init>()V

    .line 318
    iget v1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xOrigin:F

    iput v1, v0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineLeft:F

    .line 319
    iget v1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xOrigin:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineRight:F

    .line 320
    iget-object v1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    iget v1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    .line 324
    iget v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xOrigin:F

    add-float v1, p2, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xOrigin:F

    .line 325
    iget v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xCenter:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->xCenter:F

    .line 326
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p1, p1

    iput p1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->yOrigin:F

    const/4 p1, 0x0

    .line 327
    iput p1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    const/4 p1, 0x0

    .line 328
    iput p1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    .line 330
    iget v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    .line 331
    iget-boolean p2, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->firstLine:Z

    if-nez p2, :cond_0

    add-float/2addr v0, p3

    .line 332
    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    goto :goto_0

    .line 334
    :cond_0
    iput-boolean p1, p0, Lcom/cdv/text/NvAndroidTextLayout$VerticalLayoutContext;->firstLine:Z

    :goto_0
    return-void
.end method
