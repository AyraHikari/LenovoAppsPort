.class Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$1;
.super Ljava/lang/Object;
.source "ImageSavingTask.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewSaved(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    .line 120
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;-><init>()V

    .line 121
    iput p1, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;->max:I

    .line 122
    iput p2, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;->current:I

    .line 123
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->postUpdate(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;)V

    return-void
.end method
