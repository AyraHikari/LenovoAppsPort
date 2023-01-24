.class Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;
.super Ljava/lang/Object;
.source "FocusActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefocusTask"
.end annotation


# instance fields
.field private REFOCUS_TASK:I

.field private mBaseBitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHanderThread:Landroid/os/HandlerThread;

.field private mIn:Landroid/renderscript/Allocation;

.field private mOut:Landroid/renderscript/Allocation;

.field private mPaint:Landroid/graphics/Paint;

.field private mProcessHander:Landroid/os/Handler;

.field private mRSDestroyed:Z

.field private mReFocusBitmap:Landroid/graphics/Bitmap;

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mResultHandler:Landroid/os/Handler;

.field private mRgbaType:Landroid/renderscript/Type$Builder;

.field private mYuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private mYuvType:Landroid/renderscript/Type$Builder;

.field final synthetic this$0:Lcom/zui/gallery/filtershow/FocusActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/os/Handler;)V
    .locals 3

    .line 835
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 822
    iput v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->REFOCUS_TASK:I

    .line 836
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProcessTaskController"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mHanderThread:Landroid/os/HandlerThread;

    .line 838
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 839
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mProcessHander:Landroid/os/Handler;

    .line 840
    iput-object p2, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mResultHandler:Landroid/os/Handler;

    .line 843
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 844
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mYuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-void
.end method

.method private doInbackground(Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;)V
    .locals 2

    .line 916
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1900(Lcom/zui/gallery/filtershow/FocusActivity;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FocusActivity"

    const-string v0, "Activity finished already"

    .line 917
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 920
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$600(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2000(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->generatePreviewBitmap(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)Landroid/graphics/Bitmap;

    .line 921
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mReFocusBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 922
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->onTaskResult(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private generatePreviewBitmap(Landroid/graphics/Rect;Landroid/graphics/RectF;Z)Landroid/graphics/Bitmap;
    .locals 11

    .line 927
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 928
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 929
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 931
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FocusActivity;->access$700(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getRealPoint()Landroid/graphics/Point;

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "FocusActivity"

    .line 943
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refocus consume "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 946
    iget-object p3, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRenderScript:Landroid/renderscript/RenderScript;

    monitor-enter p3

    .line 949
    :try_start_0
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRSDestroyed:Z

    const/4 p1, 0x0

    .line 950
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mReFocusBitmap:Landroid/graphics/Bitmap;

    .line 975
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 977
    :cond_0
    new-instance p3, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p3

    move v5, v8

    move v6, v9

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 980
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 981
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {p3, v3, v5, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 982
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 983
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 984
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 985
    array-length p2, p1

    invoke-static {p1, v4, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mReFocusBitmap:Landroid/graphics/Bitmap;

    .line 987
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 989
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 992
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string p3, "FocusActivity"

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generatePreviewBitmap consume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mReFocusBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private onTaskResult(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1001
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1002
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 871
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    .line 873
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->doInbackground(Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;)V

    const/4 p1, 0x1

    return p1
.end method

.method postReFocusTask(Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;)V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mProcessHander:Landroid/os/Handler;

    iget v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->REFOCUS_TASK:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "FocusActivity"

    const-string v0, "alread have task runing"

    .line 860
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mProcessHander:Landroid/os/Handler;

    iget v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->REFOCUS_TASK:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 863
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 864
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mProcessHander:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method quit()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRenderScript:Landroid/renderscript/RenderScript;

    monitor-enter v0

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    const/4 v1, 0x1

    .line 1009
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRSDestroyed:Z

    .line 1011
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mYuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    if-eqz v1, :cond_1

    .line 1012
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mYuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    .line 1014
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mIn:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mIn:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mOut:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_3

    .line 1018
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mOut:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    :cond_3
    const/4 v1, 0x0

    .line 1020
    iput-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mYuvType:Landroid/renderscript/Type$Builder;

    .line 1021
    iput-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mRgbaType:Landroid/renderscript/Type$Builder;

    .line 1022
    iput-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mReFocusBitmap:Landroid/graphics/Bitmap;

    .line 1024
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1025
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setBaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 848
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mBaseBitmapRef:Ljava/lang/ref/WeakReference;

    .line 850
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mCanvas:Landroid/graphics/Canvas;

    .line 851
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    .line 852
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 853
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 854
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method
