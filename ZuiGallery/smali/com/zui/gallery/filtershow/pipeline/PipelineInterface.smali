.class public interface abstract Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;
.super Ljava/lang/Object;
.source "PipelineInterface.java"


# virtual methods
.method public abstract getInPixelsAllocation()Landroidx/renderscript/Allocation;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutPixelsAllocation()Landroidx/renderscript/Allocation;
.end method

.method public abstract getRSContext()Landroidx/renderscript/RenderScript;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract prepareRenderscriptAllocations(Landroid/graphics/Bitmap;)Z
.end method
