.class public Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;
.super Ljava/lang/Object;
.source "CachingPipeline.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final LOGTAG:Ljava/lang/String; = "CachingPipeline"

.field private static final MIN_WIDHT:I = 0xc8

.field private static volatile sRS:Landroidx/renderscript/RenderScript;


# instance fields
.field private DEBUG:Z

.field private mCachedProcessing:Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

.field private mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

.field private mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

.field private volatile mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

.field private volatile mHeight:I

.field private volatile mHighResPreviewScaleFactor:F

.field protected volatile mInPixelsAllocation:Landroidx/renderscript/Allocation;

.field private volatile mName:Ljava/lang/String;

.field private volatile mOriginalAllocation:Landroidx/renderscript/Allocation;

.field private volatile mOriginalBitmap:Landroid/graphics/Bitmap;

.field protected volatile mOutPixelsAllocation:Landroidx/renderscript/Allocation;

.field private volatile mPreviewScaleFactor:F

.field private volatile mResizedOriginalBitmap:Landroid/graphics/Bitmap;

.field private volatile mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->DEBUG:Z

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    .line 59
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 60
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 62
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    .line 63
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mCachedProcessing:Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

    .line 66
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalAllocation:Landroidx/renderscript/Allocation;

    .line 67
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mWidth:I

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 74
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mPreviewScaleFactor:F

    .line 75
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHighResPreviewScaleFactor:F

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mName:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    .line 82
    iput-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mName:Ljava/lang/String;

    return-void
.end method

.method private avatarPhotoFilterStatus(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 7

    .line 456
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 458
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 460
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 462
    instance-of v4, v3, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    const-string v5, ""

    if-eqz v4, :cond_0

    .line 464
    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 465
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    .line 466
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 467
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 468
    invoke-interface {v4, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v6, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_FILTER:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v3, v6, v5, v1, v4}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_1

    .line 471
    :cond_0
    instance-of v4, v3, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v4, :cond_1

    .line 473
    check-cast v3, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 474
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 476
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "\u5b57\u5e55\u5185\u5bb9"

    .line 477
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v6, Lcom/zui/gallery/util/AvatarUtils$Action;->TEXT_WATERMARK:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v3, v6, v5, v1, v4}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_1

    .line 480
    :cond_1
    instance-of v4, v3, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    if-eqz v4, :cond_2

    .line 482
    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 483
    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 485
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 486
    invoke-interface {v4, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v6, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_CROP:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v3, v6, v5, v1, v4}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;ILjava/util/Map;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static declared-synchronized createRenderscriptContext(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;

    if-eqz v1, :cond_0

    const-string v1, "CachingPipeline"

    const-string v2, "A prior RS context exists when calling setRenderScriptContext"

    .line 91
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->destroyRenderScriptContext()V

    :cond_0
    const-string/jumbo v1, "takePic"

    const-string v2, "onCreate: middle111"

    .line 94
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p0}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;)Landroidx/renderscript/RenderScript;

    move-result-object p0

    sput-object p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;

    const-string/jumbo p0, "takePic"

    const-string v1, "onCreate: middle222"

    .line 96
    invoke-static {p0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized destroyPixelAllocations()V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CachingPipeline"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyPixelAllocations in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mInPixelsAllocation:Landroidx/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mInPixelsAllocation:Landroidx/renderscript/Allocation;

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 145
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mInPixelsAllocation:Landroidx/renderscript/Allocation;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOutPixelsAllocation:Landroidx/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOutPixelsAllocation:Landroidx/renderscript/Allocation;

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 149
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOutPixelsAllocation:Landroidx/renderscript/Allocation;

    :cond_2
    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mWidth:I

    .line 152
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized destroyRenderScriptContext()V
    .locals 2

    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->destroy()V

    :cond_0
    const/4 v1, 0x0

    .line 103
    sput-object v1, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRenderScriptContext()Landroidx/renderscript/RenderScript;
    .locals 2

    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getType(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)Ljava/lang/String;
    .locals 2

    .line 156
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p1, "ICON_RENDERING"

    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p1, "FILTERS_RENDERING"

    return-object p1

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "FULL_RENDERING"

    return-object p1

    .line 165
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string p1, "GEOMETRY_RENDERING"

    return-object p1

    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const-string p1, "PARTIAL_RENDERING"

    return-object p1

    .line 171
    :cond_4
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const-string p1, "HIGHRES_RENDERING"

    return-object p1

    :cond_5
    const-string p1, "UNKNOWN TYPE!"

    return-object p1
.end method

.method private setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setPipeline(Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;)V

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setFiltersManager(Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;)V

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setBitmapCache(Lcom/zui/gallery/filtershow/cache/BitmapCache;)V

    if-eqz p2, :cond_0

    .line 182
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHighResPreviewScaleFactor:F

    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setScaleFactor(F)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mPreviewScaleFactor:F

    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setScaleFactor(F)V

    .line 186
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setQuality(I)V

    .line 187
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 188
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setStop(Z)V

    return-void
.end method

.method private declared-synchronized updateOriginalAllocation(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 205
    monitor-exit p0

    return v0

    .line 207
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 210
    monitor-exit p0

    return v0

    .line 213
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    .line 215
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

    .line 216
    sget-object v3, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v2}, Landroidx/renderscript/Allocation;->destroy()V

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalAllocation:Landroidx/renderscript/Allocation;

    .line 223
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p1, v1, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyGeometry(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 224
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    invoke-static {v0, p1, v1, v4}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalAllocation:Landroidx/renderscript/Allocation;

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {v2}, Landroidx/renderscript/Allocation;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :cond_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public compute(Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V
    .locals 2

    .line 499
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 502
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 503
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object p2

    .line 504
    iget-object p3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mCachedProcessing:Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p3, v0, p2, v1}, Lcom/zui/gallery/filtershow/pipeline/CacheProcessing;->process(Landroid/graphics/Bitmap;Ljava/util/Vector;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 506
    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->setProducer(Landroid/graphics/Bitmap;)V

    .line 507
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized getInPixelsAllocation()Landroidx/renderscript/Allocation;
    .locals 1

    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mInPixelsAllocation:Landroidx/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getOutPixelsAllocation()Landroidx/renderscript/Allocation;
    .locals 1

    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOutPixelsAllocation:Landroidx/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRSContext()Landroidx/renderscript/RenderScript;
    .locals 1

    .line 572
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 136
    sget-object v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->sRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    monitor-enter p0

    .line 525
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needsRepaint()Z
    .locals 1

    .line 512
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviewBuffer()Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->checkRepaintNeeded()Z

    move-result v0

    return v0
.end method

.method public prepareRenderscriptAllocations(Landroid/graphics/Bitmap;)Z
    .locals 5

    .line 529
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOutPixelsAllocation:Landroidx/renderscript/Allocation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mInPixelsAllocation:Landroidx/renderscript/Allocation;

    if-eqz v1, :cond_1

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mWidth:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHeight:I

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_3

    .line 533
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->destroyPixelAllocations()V

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v3, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_2

    .line 536
    :cond_3
    :goto_1
    sget-object v1, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 538
    :goto_2
    sget-object v3, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/16 v4, 0x40

    invoke-static {v0, v1, v3, v4}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOutPixelsAllocation:Landroidx/renderscript/Allocation;

    .line 540
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOutPixelsAllocation:Landroidx/renderscript/Allocation;

    .line 541
    invoke-virtual {v1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    .line 540
    invoke-static {v0, v1}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mInPixelsAllocation:Landroidx/renderscript/Allocation;

    move v1, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 545
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mInPixelsAllocation:Landroidx/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroidx/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 547
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mWidth:I

    if-ne v0, v3, :cond_6

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHeight:I

    if-eq v0, v3, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5

    .line 549
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mWidth:I

    .line 550
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHeight:I

    .line 553
    :goto_5
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->DEBUG:Z

    if-eqz p1, :cond_7

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareRenderscriptAllocations: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CachingPipeline"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2
.end method

.method public declared-synchronized render(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 12

    monitor-enter p0

    .line 318
    :try_start_0
    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 320
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 322
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    .line 323
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 324
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 325
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    if-nez v1, :cond_3

    .line 326
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 329
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CachingPipeline"

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "render image of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getType(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_4
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 334
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v4

    const/4 v5, 0x1

    .line 335
    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 336
    iget-object v6, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {v6, v4}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 338
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-ne v6, v2, :cond_6

    .line 339
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    .line 341
    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBimapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v7

    .line 342
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 343
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getDestination()Landroid/graphics/Rect;

    move-result-object v9

    .line 340
    invoke-static {v6, v7, v1, v8, v9}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getScaleOneImageForPreset(Landroid/content/Context;Lcom/zui/gallery/filtershow/cache/BitmapCache;Landroid/net/Uri;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "CachingPipeline"

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get bitmap for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getType(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    if-eqz v1, :cond_6

    .line 349
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/16 v7, 0xc8

    if-ge v6, v7, :cond_6

    const-string v1, "CachingPipeline"

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "small bitmap for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getType(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " skip draw"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 356
    :cond_6
    :try_start_5
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_7

    .line 357
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-eq v6, v7, :cond_7

    .line 358
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-ne v6, v5, :cond_8

    .line 359
    :cond_7
    invoke-direct {p0, v4}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->updateOriginalAllocation(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    .line 362
    :cond_8
    iget-boolean v6, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->DEBUG:Z

    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    const-string v6, "CachingPipeline"

    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after update, req bitmap ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ? resizeOriginal ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 364
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 365
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 363
    invoke-static {v6, v8}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_9
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-eqz v6, :cond_b

    .line 369
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-ne v6, v7, :cond_a

    goto :goto_0

    .line 371
    :cond_a
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-ne v6, v5, :cond_c

    .line 372
    iget-object v6, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

    invoke-virtual {v6, v1}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 370
    :cond_b
    :goto_0
    iget-object v6, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalAllocation:Landroidx/renderscript/Allocation;

    invoke-virtual {v6, v1}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 375
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-eqz v6, :cond_d

    .line 376
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-eq v6, v5, :cond_d

    .line 377
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-eq v6, v3, :cond_d

    .line 378
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v6

    if-eq v6, v2, :cond_d

    .line 379
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v2

    const/4 v6, 0x6

    if-ne v2, v6, :cond_14

    .line 381
    :cond_d
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v2

    if-ne v2, v3, :cond_e

    .line 382
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setQuality(I)V

    goto :goto_2

    .line 384
    :cond_e
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v2, v5}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setQuality(I)V

    .line 387
    :goto_2
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v2

    if-ne v2, v3, :cond_12

    .line 388
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getIconBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 389
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_f

    .line 391
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 393
    :cond_f
    :try_start_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v7

    if-le v5, v6, :cond_10

    .line 394
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getLargeThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_10
    if-eqz v1, :cond_11

    .line 397
    iget-object v5, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 398
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 397
    invoke-virtual {v5, v6, v8, v3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 399
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 400
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 401
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    .line 402
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    .line 404
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 405
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    sub-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 406
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    sub-float/2addr v1, v11

    div-float/2addr v1, v10

    .line 407
    invoke-virtual {v6, v8, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 408
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v2, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v1, v3

    goto :goto_3

    .line 410
    :cond_11
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 413
    :cond_12
    :goto_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v4, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->apply(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->needsStop()Z

    move-result v2

    if-nez v2, :cond_13

    .line 416
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    :cond_13
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {p1, v4}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 420
    :cond_14
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 420
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renderFilters(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 5

    .line 294
    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0

    .line 295
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    monitor-exit v0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const/4 v2, 0x0

    .line 299
    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 300
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapHighres()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 302
    monitor-exit v0

    return-void

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 305
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->apply(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->needsStop()Z

    move-result v3

    if-nez v3, :cond_2

    .line 308
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 312
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 313
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized renderFinalImage(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 440
    :try_start_0
    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 441
    :try_start_1
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 442
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 444
    :try_start_2
    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 445
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setQuality(I)V

    .line 446
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setScaleFactor(F)V

    .line 447
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {v1, p2}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 448
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p2, p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyGeometry(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 449
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p2, p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->apply(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 450
    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->avatarPhotoFilterStatus(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 451
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 452
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renderGeometry(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 5

    .line 271
    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0

    .line 272
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 273
    monitor-exit v0

    return-void

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 277
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapHighres()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 279
    monitor-exit v0

    return-void

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyGeometry(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->needsStop()Z

    move-result v3

    if-nez v3, :cond_2

    .line 285
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 289
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public renderGeometryIcon(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 0

    .line 495
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->applyGeometryRepresentations(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public renderHighres(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 6

    .line 234
    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0

    .line 235
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 236
    monitor-exit v0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 240
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBitmapHighres()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 242
    monitor-exit v0

    return-void

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v4, 0x6

    invoke-virtual {v3, v2, v4}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyGeometry(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setQuality(I)V

    .line 248
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->apply(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->needsStop()Z

    move-result v3

    if-nez v3, :cond_3

    .line 251
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 252
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v3, :cond_2

    .line 257
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 266
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized renderImage(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 9

    monitor-enter p0

    .line 424
    :try_start_0
    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    :try_start_1
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 426
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 428
    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 429
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 430
    iget-object v8, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyFilters(IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V

    .line 432
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->nbFilters()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->applyBorder(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ZLcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V

    .line 436
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 436
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    const-class v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v1

    if-nez v1, :cond_0

    .line 113
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 115
    :try_start_2
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 116
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalAllocation:Landroidx/renderscript/Allocation;

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalAllocation:Landroidx/renderscript/Allocation;

    invoke-virtual {v2}, Landroidx/renderscript/Allocation;->destroy()V

    .line 122
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalAllocation:Landroidx/renderscript/Allocation;

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

    invoke-virtual {v2}, Landroidx/renderscript/Allocation;->destroy()V

    .line 126
    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroidx/renderscript/Allocation;

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 128
    iput v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mPreviewScaleFactor:F

    .line 129
    iput v1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHighResPreviewScaleFactor:F

    .line 131
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->destroyPixelAllocations()V

    .line 132
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 132
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighResPreviewScaleFactor(F)V
    .locals 0

    .line 521
    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mHighResPreviewScaleFactor:F

    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 192
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;

    const-string v0, "CachingPipeline"

    if-eqz p1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOriginal, size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "setOriginal, size null"

    .line 196
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setupEnvironment(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Z)V

    .line 200
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->updateOriginalAllocation(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    return-void
.end method

.method public setPreviewScaleFactor(F)V
    .locals 0

    .line 517
    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mPreviewScaleFactor:F

    return-void
.end method

.method public stop()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->mEnvironment:Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->setStop(Z)V

    return-void
.end method
