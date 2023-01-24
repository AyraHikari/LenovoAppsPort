.class public Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;
.super Ljava/lang/Object;
.source "RenderingRequest.java"


# static fields
.field public static final FILTERS_RENDERING:I = 0x1

.field public static final FULL_RENDERING:I = 0x0

.field public static final GEOMETRY_RENDERING:I = 0x2

.field public static final HIGHRES_RENDERING:I = 0x5

.field public static final ICON_RENDERING:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "RenderingRequest"

.field public static final PARTIAL_RENDERING:I = 0x4

.field public static final STYLE_ICON_RENDERING:I = 0x6

.field private static final mConfig:Landroid/graphics/Bitmap$Config;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/Rect;

.field private mCaller:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;

.field private mDestination:Landroid/graphics/Rect;

.field private mIconBounds:Landroid/graphics/Rect;

.field private mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mIsDirect:Z

.field private mOriginalImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mScaleFactor:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mIsDirect:Z

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 34
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mOriginalImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 35
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mCaller:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    iput v2, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mScaleFactor:F

    .line 37
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mBounds:Landroid/graphics/Rect;

    .line 38
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mDestination:Landroid/graphics/Rect;

    .line 39
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mIconBounds:Landroid/graphics/Rect;

    .line 40
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mType:I

    return-void
.end method

.method public static post(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;ILcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->post(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;ILcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static post(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;ILcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq p3, v3, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    if-eq p3, v2, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    if-eqz p2, :cond_6

    if-nez p4, :cond_1

    goto :goto_2

    .line 65
    :cond_1
    new-instance v4, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    invoke-direct {v4}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;-><init>()V

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    const/4 v6, 0x3

    if-eq p3, v6, :cond_3

    const/4 v6, 0x6

    if-ne p3, v6, :cond_2

    goto :goto_0

    :cond_2
    if-eq p3, v3, :cond_4

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_4

    if-eq p3, v2, :cond_4

    .line 75
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/16 v5, 0x8

    .line 75
    invoke-virtual {v0, v1, p1, v5}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    .line 71
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v5, "Icon"

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;-><init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->renderGeometryIcon(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 80
    :cond_4
    :goto_1
    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    new-instance p1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 82
    invoke-virtual {v4, p2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setOriginalImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 83
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p2

    invoke-virtual {v4, p2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setScaleFactor(F)V

    if-ne p3, v3, :cond_5

    .line 86
    invoke-virtual {v4, p5}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBounds(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {v4, p6}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setDestination(Landroid/graphics/Rect;)V

    .line 88
    invoke-virtual {p1, v2, p5}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setPartialRendering(ZLandroid/graphics/Rect;)V

    .line 91
    :cond_5
    invoke-virtual {v4, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 92
    invoke-virtual {v4, p3}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setType(I)V

    .line 93
    invoke-virtual {v4, p4}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setCaller(Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    .line 94
    invoke-virtual {v4, p0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->post(Landroid/content/Context;)V

    return-void

    .line 61
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "something null: source: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or preset: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderingRequest"

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static postIconRequest(Landroid/content/Context;IILcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V
    .locals 2

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;-><init>()V

    .line 106
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, p3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 107
    invoke-virtual {v0, p3}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setOriginalImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 108
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setScaleFactor(F)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    const/4 p3, 0x3

    .line 110
    invoke-virtual {v0, p3}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setType(I)V

    .line 111
    invoke-virtual {v0, p4}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setCaller(Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    .line 112
    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p3}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setIconBounds(Landroid/graphics/Rect;)V

    .line 113
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->post(Landroid/content/Context;)V

    return-void

    .line 101
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "something null, preset: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderingRequest"

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDestination()Landroid/graphics/Rect;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mDestination:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIconBounds()Landroid/graphics/Rect;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mIconBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getOriginalImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mOriginalImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mScaleFactor:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mType:I

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mIsDirect:Z

    return v0
.end method

.method public markAvailable()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mCaller:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {v0, p0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;->available(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public post(Landroid/content/Context;)V
    .locals 1

    .line 117
    instance-of v0, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 119
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getProcessingService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setCaller(Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mCaller:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;

    return-void
.end method

.method public setDestination(Landroid/graphics/Rect;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mDestination:Landroid/graphics/Rect;

    return-void
.end method

.method public setDirect(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mIsDirect:Z

    return-void
.end method

.method public setIconBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mIconBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public setOriginalImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mOriginalImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mScaleFactor:F

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->mType:I

    return-void
.end method
