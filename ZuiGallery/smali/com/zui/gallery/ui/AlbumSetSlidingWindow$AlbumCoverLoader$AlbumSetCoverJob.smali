.class Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumSetCoverJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    .line 899
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v1

    const-string v2, "privatedraw"

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x9

    if-eq v1, v6, :cond_12

    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v1

    if-eq v1, v3, :cond_12

    const-string v1, "comman group"

    .line 900
    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v1, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v1

    iget-object v2, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v2, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 902
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 903
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 904
    new-instance v3, Lcom/zui/gallery/ui/RoundRect;

    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v7

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-direct {v3, v6, v7, v8}, Lcom/zui/gallery/ui/RoundRect;-><init>(IIF)V

    .line 905
    invoke-virtual {v3, v1}, Lcom/zui/gallery/ui/RoundRect;->Transformation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 906
    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v8, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget v8, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->bottom_left_for_title_height:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 907
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mSlotIndex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (mMediaItems == null):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$800(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cloudsyncLog"

    invoke-static {v7, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    const/4 v9, 0x0

    if-nez v6, :cond_4

    .line 909
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_6

    .line 920
    :cond_1
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u4e91\u76f8\u518c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 921
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v4

    if-eqz v4, :cond_3

    .line 923
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 924
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 925
    iget-object v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v3, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 926
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 927
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 928
    invoke-virtual {v2, v4, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 929
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 930
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 932
    :cond_2
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 936
    :cond_3
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 983
    :cond_4
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    aget-object v4, v6, v4

    if-eqz v4, :cond_10

    .line 986
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v6

    const/16 v10, 0x8

    const/4 v11, 0x2

    if-eq v6, v10, :cond_7

    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v6

    if-ne v6, v11, :cond_5

    goto :goto_1

    .line 988
    :cond_5
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 989
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f070079

    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v5

    goto :goto_2

    .line 987
    :cond_7
    :goto_1
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f07007a

    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 991
    :goto_2
    instance-of v10, v4, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    const/4 v12, 0x6

    if-eqz v10, :cond_b

    const-string/jumbo v4, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

    .line 993
    invoke-static {v7, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v4

    if-ne v4, v12, :cond_8

    .line 996
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070072

    invoke-static {v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 999
    :cond_8
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f07007b

    invoke-static {v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_a

    .line 1001
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1002
    iget-object v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v3, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    .line 1003
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v8, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget v8, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->bottom_left_for_title_height:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1004
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1005
    invoke-virtual {v2, v3, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1006
    invoke-virtual {v2, v4, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_9

    .line 1007
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1008
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1009
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1010
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v12

    int-to-float v3, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v12

    int-to-float v7, v8

    invoke-virtual {v2, v6, v3, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1012
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1013
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 1015
    :cond_a
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 1018
    :cond_b
    invoke-virtual {v4, v11}, Lcom/zui/gallery/data/MediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-interface {v10, v11}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_d

    .line 1019
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_d

    .line 1021
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1037
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v3

    invoke-static {v10, v3, v8}, Lcom/zui/gallery/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v4

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v7

    iget-object v10, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v10, v10, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget v10, v10, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->bottom_left_for_title_height:I

    sub-int/2addr v7, v10

    invoke-static {v3, v4, v7, v8}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1038
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1039
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1044
    invoke-static {v3}, Lcom/zui/gallery/common/BitmapUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1045
    invoke-virtual {v2, v3, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_c

    .line 1046
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1047
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1048
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v4, v8

    sub-int/2addr v4, v12

    int-to-float v4, v4

    sub-int/2addr v7, v9

    sub-int/2addr v7, v12

    int-to-float v7, v7

    .line 1049
    invoke-virtual {v2, v6, v4, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1051
    :cond_c
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1052
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 1053
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    const v8, 0x7f060089

    if-eqz v4, :cond_e

    if-nez v10, :cond_e

    const-string v1, "ggggggggggggggggggg  "

    .line 1054
    invoke-static {v7, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1057
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1058
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1062
    :cond_e
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1063
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1064
    iget-object v5, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v5, v5, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v5}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_4
    move-object v5, v1

    :goto_5
    if-eqz v6, :cond_f

    .line 1068
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    move-object v1, v5

    goto :goto_6

    .line 1071
    :cond_10
    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1074
    :cond_11
    :goto_6
    iget-object v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v3, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$1200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;Landroid/graphics/Canvas;)V

    return-object v1

    .line 1076
    :cond_12
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v1

    const v8, 0x7f07037c

    const/high16 v9, 0x41900000    # 18.0f

    const/16 v10, 0xf

    const v11, 0x7f060363

    const v12, 0x7f06035e

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v14, 0x42200000    # 40.0f

    const/high16 v15, 0x40e00000    # 7.0f

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v17, 0x41e00000    # 28.0f

    if-ne v1, v3, :cond_15

    const-string/jumbo v1, "wangcanxxxxxxx"

    const-string v2, "private"

    .line 1078
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v1, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1080
    iget-object v2, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v2, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v17

    float-to-int v2, v2

    .line 1081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrivacyHeight is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "wangcanyyyyyy"

    invoke-static {v6, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1085
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v6

    instance-of v6, v6, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-eqz v6, :cond_13

    return-object v3

    .line 1090
    :cond_13
    new-instance v6, Lcom/zui/gallery/ui/RoundRect;

    invoke-direct {v6, v1, v2, v15}, Lcom/zui/gallery/ui/RoundRect;-><init>(IIF)V

    .line 1091
    invoke-virtual {v6, v3}, Lcom/zui/gallery/ui/RoundRect;->Transformation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1092
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1093
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1094
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1096
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x7f070304

    invoke-static {v6, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1097
    iget-object v15, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v15, v15, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v15}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v15

    invoke-interface {v15}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float v15, v15, v17

    float-to-int v15, v15

    .line 1098
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4, v4, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1099
    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1100
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1001fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v14

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v14, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v14, v14, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v14}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v14

    invoke-interface {v14}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v14, v14, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v14}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v3, v6, v7, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1105
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getAvaliablePrivacyCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1106
    iget-object v13, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v13, v13, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v13}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v7, v4, v14, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1107
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1109
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1111
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1113
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1114
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v1, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getParentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 1117
    :cond_14
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;I)I

    move-result v1

    .line 1122
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v10

    sub-int/2addr v1, v10

    sub-int/2addr v1, v4

    sub-int/2addr v1, v6

    int-to-float v10, v1

    .line 1125
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v9

    float-to-int v9, v11

    int-to-float v9, v9

    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v3, v7, v10, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1129
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1130
    iget-object v8, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v8, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v8}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v8

    invoke-interface {v8}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 1131
    iget-object v9, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v9, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v9}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1134
    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v1, v6

    add-int v6, v1, v4

    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v11, v16

    float-to-int v11, v11

    add-int/2addr v1, v8

    add-int/2addr v1, v4

    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v16

    float-to-int v4, v4

    add-int/2addr v4, v9

    invoke-direct {v10, v6, v11, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1136
    invoke-virtual {v3, v7, v5, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1137
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    return-object v2

    :cond_15
    const-string/jumbo v1, "trash group"

    .line 1210
    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v1, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1212
    iget-object v2, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v2, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v17

    float-to-int v2, v2

    .line 1213
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1216
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v6

    instance-of v6, v6, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-eqz v6, :cond_16

    return-object v3

    .line 1221
    :cond_16
    new-instance v6, Lcom/zui/gallery/ui/RoundRect;

    invoke-direct {v6, v1, v2, v15}, Lcom/zui/gallery/ui/RoundRect;-><init>(IIF)V

    .line 1222
    invoke-virtual {v6, v3}, Lcom/zui/gallery/ui/RoundRect;->Transformation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1223
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1224
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1225
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1227
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070390

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1228
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v17

    float-to-int v7, v7

    .line 1229
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v4, v4, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1230
    invoke-virtual {v3, v6, v5, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1231
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10029c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v14

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v14, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v14, v14, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v14}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v14

    invoke-interface {v14}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v14, v14, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v14}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v3, v6, v7, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1235
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1236
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->access$1700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1237
    iget-object v13, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v13, v13, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v13}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v7, v4, v14, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1238
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1240
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1242
    iget-object v6, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v6, v6, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1244
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1245
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v1, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getParentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 1248
    :cond_17
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;I)I

    move-result v1

    .line 1253
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v10

    sub-int/2addr v1, v10

    sub-int/2addr v1, v4

    sub-int/2addr v1, v6

    int-to-float v10, v1

    .line 1256
    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v9

    float-to-int v9, v11

    int-to-float v9, v9

    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v3, v7, v10, v9, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1260
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v7, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1261
    iget-object v8, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v8, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v8}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v8

    invoke-interface {v8}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 1262
    iget-object v9, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v9, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v9}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 1265
    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v1, v6

    add-int v6, v1, v4

    iget-object v11, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v11, v11, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v11

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v11, v16

    float-to-int v11, v11

    add-int/2addr v1, v8

    add-int/2addr v1, v4

    iget-object v4, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->this$1:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v16

    float-to-int v4, v4

    add-int/2addr v4, v9

    invoke-direct {v10, v6, v11, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1267
    invoke-virtual {v3, v7, v5, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1268
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v2
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 895
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
