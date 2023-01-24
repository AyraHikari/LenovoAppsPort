.class Lcom/zui/gallery/glrenderer/MultiLineTexture;
.super Lcom/zui/gallery/glrenderer/CanvasTexture;
.source "MultiLineTexture.java"


# instance fields
.field private final mLayout:Landroid/text/Layout;


# direct methods
.method private constructor <init>(Landroid/text/Layout;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/glrenderer/CanvasTexture;-><init>(II)V

    .line 35
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/MultiLineTexture;->mLayout:Landroid/text/Layout;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;IFILandroid/text/Layout$Alignment;)Lcom/zui/gallery/glrenderer/MultiLineTexture;
    .locals 13

    .line 41
    invoke-static/range {p2 .. p3}, Lcom/zui/gallery/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v4

    .line 42
    new-instance v12, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p0

    move v5, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 45
    new-instance v0, Lcom/zui/gallery/glrenderer/MultiLineTexture;

    invoke-direct {v0, v12}, Lcom/zui/gallery/glrenderer/MultiLineTexture;-><init>(Landroid/text/Layout;)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/MultiLineTexture;->mLayout:Landroid/text/Layout;

    invoke-virtual {p2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
