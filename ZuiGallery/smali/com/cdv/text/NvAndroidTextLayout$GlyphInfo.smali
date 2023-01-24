.class public Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;
.super Ljava/lang/Object;
.source "NvAndroidTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphInfo"
.end annotation


# instance fields
.field public bounding:Landroid/graphics/RectF;

.field public colorGlyph:Z

.field public decorativeGlyph:Z

.field public endCharIdx:I

.field public glyphPath:Landroid/graphics/Path;

.field public isRtl:Z

.field public lineEnd:I

.field public lineStart:I

.field public mayHaveContextualForm:Z

.field public noShape:Z

.field public pos:Landroid/graphics/PointF;

.field public startCharIdx:I

.field public typographicBounding:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    .line 51
    iput-boolean v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->noShape:Z

    .line 52
    iput-boolean v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->decorativeGlyph:Z

    .line 53
    iput-boolean v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->mayHaveContextualForm:Z

    .line 54
    iput-boolean v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->isRtl:Z

    .line 57
    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    .line 58
    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    .line 59
    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->lineStart:I

    .line 60
    iput v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->lineEnd:I

    return-void
.end method
