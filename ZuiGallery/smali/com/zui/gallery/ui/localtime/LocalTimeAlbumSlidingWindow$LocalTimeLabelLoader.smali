.class Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;
.super Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;
.source "LocalTimeAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalTimeLabelLoader"
.end annotation


# instance fields
.field private final mLabelIndex:I

.field private final mSourceType:I

.field private final mTimeEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

.field private final mTitle:Ljava/lang/String;

.field private final mTotalCount:I

.field final synthetic this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;ILjava/lang/String;IILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;-><init>()V

    .line 1156
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mLabelIndex:I

    .line 1157
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mTitle:Ljava/lang/String;

    .line 1158
    iput p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mTotalCount:I

    .line 1159
    iput p5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mSourceType:I

    .line 1160
    iput-object p6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mTimeEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    return-void
.end method


# virtual methods
.method protected onLoadComplete([Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1175
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$400(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/FutureListener<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$300(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    .line 1168
    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1300(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mTitle:Ljava/lang/String;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mTotalCount:I

    .line 1169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mSourceType:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mTimeEntry:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    .line 1168
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v1

    .line 1167
    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/util/JobLimiter;->submitFirst(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 7

    .line 1179
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->getBitmap()[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1180
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1600(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->needLoadCount:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    array-length v1, v0

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1700(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    move-result-object v1

    iget v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mLabelIndex:I

    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    .line 1184
    invoke-static {v4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1700(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v1, v1, v3

    .line 1185
    new-instance v3, Lcom/zui/gallery/glrenderer/BitmapTexture;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-direct {v3, v5}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1186
    invoke-virtual {v3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    .line 1187
    invoke-virtual {v3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    .line 1188
    invoke-virtual {v3, v4}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 1189
    iput-object v3, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1191
    aget-object v5, v0, v2

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 1192
    new-instance v5, Lcom/zui/gallery/glrenderer/BitmapTexture;

    aget-object v2, v0, v2

    invoke-direct {v5, v2}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1193
    invoke-virtual {v5}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    .line 1194
    invoke-virtual {v5}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    .line 1195
    invoke-virtual {v5, v4}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 1196
    iput-object v5, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    goto :goto_0

    .line 1198
    :cond_1
    iput-object v6, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1202
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1600(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->needLoadCount:Z

    if-eqz v2, :cond_2

    .line 1203
    new-instance v6, Lcom/zui/gallery/glrenderer/BitmapTexture;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {v6, v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1204
    invoke-virtual {v6, v4}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 1205
    iput-object v6, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->countTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1208
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->mLabelIndex:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isActiveLabelIndex(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1209
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 1210
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1600(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->needLoadCount:Z

    if-eqz v0, :cond_3

    .line 1211
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 1215
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1216
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_1

    .line 1218
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 1219
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1600(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->needLoadCount:Z

    if-eqz v0, :cond_5

    .line 1220
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;->this$0:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->access$1800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_5
    :goto_1
    return-void
.end method
