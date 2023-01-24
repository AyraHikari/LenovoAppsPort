.class Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;
.super Ljava/lang/Object;
.source "ImageSavingTask.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateProgress"
.end annotation


# instance fields
.field current:I

.field max:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
