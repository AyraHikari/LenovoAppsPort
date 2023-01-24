.class public Lcom/zui/gallery/filtershow/filters/IconUtilities;
.super Ljava/lang/Object;
.source "IconUtilities.java"


# static fields
.field public static final BLEACH:I = 0x7f0701ab

.field public static final BLUECRUSH:I = 0x7f0701ac

.field public static final BW_CONTRAST:I = 0x7f0701ad

.field public static final INSTANT:I = 0x7f0701aa

.field public static final PUNCH:I = 0x7f0701ae

.field public static final VINTAGE:I = 0x7f0701a9

.field public static final WASHOUT:I = 0x7f0701b0

.field public static final WASHOUT_COLOR:I = 0x7f0701b1

.field public static final X_PROCESS:I = 0x7f0701af


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFX(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 59
    new-instance v0, Lcom/zui/gallery/filtershow/filters/IconUtilities$1;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/filters/IconUtilities$1;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, p0, p1, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 38
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz p1, :cond_0

    .line 42
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 49
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 51
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
