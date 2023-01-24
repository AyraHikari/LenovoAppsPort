.class public abstract Lcom/zui/gallery/filtershow/filters/ImageFilterRS;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterRS.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterRS"

.field public static PERF_LOGGING:Z = false

.field private static mGreyConvert:Lcom/zui/gallery/filtershow/filters/ScriptC_grey;

.field private static mRScache:Landroidx/renderscript/RenderScript;


# instance fields
.field private DEBUG:Z

.field private mLastInputHeight:I

.field private mLastInputWidth:I

.field private mLastTimeCalled:J

.field private volatile mResourcesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->DEBUG:Z

    .line 32
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputWidth:I

    .line 33
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputHeight:I

    .line 41
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    return-void
.end method

.method protected static convertBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 2

    .line 157
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method private static convertRGBAtoA(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 3

    .line 163
    sget-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mRScache:Landroidx/renderscript/RenderScript;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mGreyConvert:Lcom/zui/gallery/filtershow/filters/ScriptC_grey;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/filters/ScriptC_grey;

    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0002

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_grey;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mGreyConvert:Lcom/zui/gallery/filtershow/filters/ScriptC_grey;

    .line 166
    sput-object p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mRScache:Landroidx/renderscript/RenderScript;

    .line 169
    :cond_1
    new-instance v0, Landroidx/renderscript/Type$Builder;

    invoke-static {p0}, Landroidx/renderscript/Element;->A_8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 171
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->convertBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v1

    invoke-static {p0}, Landroidx/renderscript/Element;->A_8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    .line 176
    :cond_2
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 177
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Type$Builder;->setY(I)Landroidx/renderscript/Type$Builder;

    .line 178
    invoke-virtual {v0}, Landroidx/renderscript/Type$Builder;->create()Landroidx/renderscript/Type;

    move-result-object v0

    sget-object v1, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    .line 181
    sget-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mGreyConvert:Lcom/zui/gallery/filtershow/filters/ScriptC_grey;

    invoke-virtual {v0, p1, p0}, Lcom/zui/gallery/filtershow/filters/ScriptC_grey;->forEach_RGBAtoA(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 182
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->destroy()V

    return-object p0
.end method

.method private isResourcesLoaded()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    return v0
.end method

.method private setResourcesLoaded(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "ImageFilterRS"

    if-eqz p1, :cond_6

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v1

    .line 119
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->DEBUG:Z
    :try_end_0
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " in pipeline "

    if-eqz v2, :cond_1

    .line 120
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    invoke-interface {v1}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getX()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputWidth:I

    if-ne v5, v7, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getY()I

    move-result v5

    iget v7, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputHeight:I

    if-eq v5, v7, :cond_3

    :cond_2
    move v4, v6

    .line 129
    :cond_3
    invoke-interface {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->prepareRenderscriptAllocations(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 130
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->isResourcesLoaded()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_5

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->freeResources()V

    .line 132
    invoke-virtual {p0, v2, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->createFilter(Landroid/content/res/Resources;FI)V

    .line 133
    invoke-direct {p0, v6}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->setResourcesLoaded(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputWidth:I

    .line 135
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputHeight:I

    .line 137
    :cond_5
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->bindScriptValues()V

    .line 138
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->runFilter()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->update(Landroid/graphics/Bitmap;)V

    .line 140
    iget-boolean p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DONE apply filter "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 149
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 150
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->displayLowMemoryToast()V

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not enough memory for filter "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RS runtime exception ? "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p2

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal argument? "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-object p1
.end method

.method public apply(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 21

    move-object/from16 v0, p0

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 74
    sget-boolean v3, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->PERF_LOGGING:Z

    const-string v4, "ImageFilterRS"

    const/4 v5, 0x3

    const-string v6, "%s; image size %dx%d; "

    const v7, 0x49742400    # 1000000.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_0

    .line 75
    iget-wide v14, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastTimeCalled:J

    sub-long v14, v1, v14

    div-long/2addr v14, v9

    new-array v3, v5, [Ljava/lang/Object;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v12

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/renderscript/Type;->getX()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v13

    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/renderscript/Type;->getY()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v11

    .line 76
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [Ljava/lang/Object;

    long-to-float v10, v14

    div-float v14, v10, v8

    .line 79
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v3, v12

    div-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v13

    const-string v10, "called after %.2f ms (%.2f FPS); "

    .line 78
    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iput-wide v1, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastTimeCalled:J

    .line 85
    iget-boolean v3, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    if-nez v3, :cond_1

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v3

    .line 87
    invoke-interface {v3}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getScaleFactor()F

    move-result v9

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getQuality()I

    move-result v10

    move-object/from16 v14, p1

    .line 87
    invoke-virtual {v0, v3, v9, v10, v14}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->createFilter(Landroid/content/res/Resources;FILandroidx/renderscript/Allocation;)V

    .line 89
    iput-boolean v13, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    goto :goto_0

    :cond_1
    move-object/from16 v14, p1

    .line 91
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 92
    invoke-virtual/range {p0 .. p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->bindScriptValues(Landroidx/renderscript/Allocation;)V

    .line 93
    invoke-virtual/range {p0 .. p2}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->run(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 94
    sget-boolean v3, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->PERF_LOGGING:Z

    if-eqz v3, :cond_2

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/renderscript/RenderScript;->finish()V

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    .line 97
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    new-array v3, v5, [Ljava/lang/Object;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v12

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v13

    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    .line 98
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sub-long v19, v19, v1

    const-wide/16 v1, 0x3e8

    .line 100
    div-long v5, v19, v1

    sub-long v17, v17, v9

    .line 101
    div-long v1, v17, v1

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [Ljava/lang/Object;

    long-to-float v5, v5

    div-float v6, v5, v8

    .line 103
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v12

    div-float v5, v7, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v13

    const-string v5, "over all %.2f ms (%.2f FPS); "

    .line 102
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v11, [Ljava/lang/Object;

    long-to-float v1, v1

    div-float v2, v1, v8

    .line 105
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v12

    div-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v13

    const-string v1, "run filter %.2f ms (%.2f FPS)"

    .line 104
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v4, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected abstract bindScriptValues()V
.end method

.method protected bindScriptValues(Landroidx/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method protected abstract createFilter(Landroid/content/res/Resources;FI)V
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroidx/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method public freeResources()V
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->isResourcesLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->resetAllocations()V

    const/4 v0, 0x0

    .line 256
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputWidth:I

    .line 257
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->mLastInputHeight:I

    .line 258
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->setResourcesLoaded(Z)V

    return-void
.end method

.method protected getInPixelsAllocation()Landroidx/renderscript/Allocation;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method protected getOutPixelsAllocation()Landroidx/renderscript/Allocation;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getOutPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method protected getRenderScriptContext()Landroidx/renderscript/RenderScript;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getRSContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public loadResource(I)Landroidx/renderscript/Allocation;
    .locals 3

    .line 217
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 220
    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->convertBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public loadResourceAlpha(I)Landroidx/renderscript/Allocation;
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->loadScaledResourceAlpha(II)Landroidx/renderscript/Allocation;

    move-result-object p1

    return-object p1
.end method

.method public loadScaledResourceAlpha(II)Landroidx/renderscript/Allocation;
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 189
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 190
    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 193
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->convertRGBAtoA(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;

    move-result-object p2

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method public loadScaledResourceAlpha(IIII)Landroidx/renderscript/Allocation;
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 201
    iput p4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 202
    invoke-static {v0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p4, 0x1

    .line 205
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 206
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->convertRGBAtoA(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;

    move-result-object p3

    .line 207
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p3
.end method

.method protected abstract resetAllocations()V
.end method

.method public abstract resetScripts()V
.end method

.method protected run(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method protected abstract runFilter()V
.end method

.method protected update(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->getOutPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method
