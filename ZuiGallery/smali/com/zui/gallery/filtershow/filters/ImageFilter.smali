.class public abstract Lcom/zui/gallery/filtershow/filters/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final SIMPLE_ICONS:Z = true

.field private static sActivity:Landroid/app/Activity;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

.field protected mName:Ljava/lang/String;

.field public mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field public mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const-string v0, "Original"

    .line 34
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    const-string v0, "ImageFilter"

    .line 35
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .line 31
    sget-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static resetStatics()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->sActivity:Landroid/app/Activity;

    return-void
.end method

.method public static setActivityForMemoryToasts(Landroid/app/Activity;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->sActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setGeneralParameters()V

    return-object p1
.end method

.method public apply(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setGeneralParameters()V

    return-void
.end method

.method public displayLowMemoryToast()V
    .locals 2

    .line 53
    sget-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->sActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Lcom/zui/gallery/filtershow/filters/ImageFilter$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter$1;-><init>(Lcom/zui/gallery/filtershow/filters/ImageFilter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public freeResources()V
    .locals 0

    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-object v0
.end method

.method public getNvsEffectSdkContext()Lcom/meicam/effect/sdk/NvsEffectSdkContext;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-object v0
.end method

.method protected getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v2, 0x1

    .line 93
    invoke-static {v0, v2, v1, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getImageToScreenMatrix(Ljava/util/Collection;ZLandroid/graphics/Rect;FF)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method protected native nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V
.end method

.method public setEnvironment(Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    return-void
.end method

.method public setGeneralParameters()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->clearGeneralParameters()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-void
.end method

.method public setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilter;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-void
.end method

.method public supportsAllocationInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
.end method
