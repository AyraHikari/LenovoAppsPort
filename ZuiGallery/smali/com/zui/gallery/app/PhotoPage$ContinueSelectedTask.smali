.class Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;
.super Landroid/os/AsyncTask;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueSelectedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIM_TIME:I = 0x7d0


# instance fields
.field private continuousSet:Lcom/zui/gallery/data/MediaSet;

.field private isSavingAll:Z

.field private startTime:J

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 4730
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V
    .locals 0

    .line 4730
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "\'"

    const/4 v2, 0x0

    .line 4744
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->isSavingAll:Z

    .line 4745
    iget-object v3, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v3}, Lcom/zui/gallery/app/PhotoPage;->access$2300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 4746
    iget-object v4, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v4}, Lcom/zui/gallery/app/PhotoPage;->access$2300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/ui/SelectionManager;->getSourceMediaSet()Lcom/zui/gallery/data/MediaSet;

    move-result-object v4

    iput-object v4, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->continuousSet:Lcom/zui/gallery/data/MediaSet;

    .line 4748
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4749
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4750
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4752
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4754
    iget-object v8, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v8, v8, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v8

    const-string v9, "_id"

    const/4 v11, 0x1

    const-string v12, "PhotoPage"

    if-eqz v3, :cond_9

    .line 4755
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    .line 4757
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zui/gallery/data/Path;

    .line 4758
    invoke-virtual {v8, v13}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v13

    const-string v14, "orientation"

    if-eqz v13, :cond_1

    .line 4760
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zui/gallery/data/Path;

    .line 4761
    invoke-virtual {v8, v13}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v15

    .line 4762
    instance-of v10, v15, Lcom/zui/gallery/data/LocalImage;

    if-eqz v10, :cond_0

    .line 4763
    check-cast v15, Lcom/zui/gallery/data/LocalImage;

    .line 4764
    invoke-virtual {v15}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    .line 4765
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/zui/gallery/data/LocalImage;->getRotation()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4766
    invoke-virtual {v13}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4767
    iget v2, v15, Lcom/zui/gallery/data/LocalImage;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "_data"

    .line 4773
    filled-new-array {v2, v14, v9}, [Ljava/lang/String;

    move-result-object v18

    .line 4774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    .line 4775
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4776
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zui/gallery/data/Path;

    .line 4777
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4779
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 4780
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4781
    iget-object v0, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    .line 4783
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    .line 4784
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4785
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4786
    invoke-interface {v5, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 4788
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4789
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v10, v2

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_5

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 4796
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4798
    :cond_4
    throw v0

    :catch_0
    const/4 v2, 0x0

    :catch_1
    if-eqz v2, :cond_5

    .line 4796
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4802
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/Path;

    .line 4803
    invoke-virtual {v8, v2}, Lcom/zui/gallery/data/DataManager;->moveToParentFolder(Lcom/zui/gallery/data/Path;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 4806
    invoke-virtual {v2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 4807
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 4808
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4809
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 4810
    invoke-virtual {v10, v14, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-array v2, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v2, v13

    const-string v13, "_data=?"

    .line 4811
    invoke-virtual {v10, v13, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 4812
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4815
    :cond_7
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new file "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4819
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 4820
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4821
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v2, v2, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    move-object v10, v3

    check-cast v10, [Ljava/lang/String;

    move-object v4, v3

    check-cast v4, Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-static {v2, v0, v10, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 4825
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4826
    iget-wide v4, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->startTime:J

    sub-long/2addr v2, v4

    .line 4827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep time  = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x7d0

    sub-long v13, v4, v2

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v2, v4

    if-gez v0, :cond_a

    .line 4830
    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 4832
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4836
    :cond_a
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4838
    :try_start_3
    iget-object v0, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 4840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch update exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    :cond_b
    :goto_7
    iget-boolean v0, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->isSavingAll:Z

    if-eqz v0, :cond_c

    .line 4844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Album name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->continuousSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 4848
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4854
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continuousSet.getFilePath(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->continuousSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    iget-object v0, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->continuousSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    .line 4864
    iget-object v4, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v4, v4, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 4865
    sget-object v17, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4867
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v18

    new-array v4, v11, [Ljava/lang/String;

    .line 4869
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/16 v21, 0x0

    const-string v19, "bucket_id = ? and _size > 0 "

    move-object/from16 v20, v4

    .line 4867
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 4873
    :goto_8
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x0

    .line 4874
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4875
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :cond_d
    if-eqz v4, :cond_f

    .line 4882
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    .line 4878
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4879
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "continuousIds:Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_f

    goto :goto_9

    :goto_a
    if-eqz v4, :cond_e

    .line 4882
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4884
    :cond_e
    throw v0

    .line 4889
    :cond_f
    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v10, 0x0

    .line 4891
    :goto_c
    :try_start_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_12

    .line 4892
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    .line 4893
    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 4894
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4895
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4896
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 4900
    :cond_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 4901
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    .line 4904
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4909
    :cond_13
    :goto_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 4910
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 4911
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x3

    const-string v6, "android:query-arg-match-trashed"

    .line 4912
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "android:query-arg-allow-movement"

    const/4 v10, 0x0

    .line 4913
    invoke-virtual {v0, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4914
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 4917
    :try_start_7
    iget-object v6, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v6, v6, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    .line 4919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: delete =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 4921
    :goto_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "total delete continuousIds continuousCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " deleteId ="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_14
    const/4 v10, 0x0

    .line 4925
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 4926
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 4927
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4928
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_trashed"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4929
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 4932
    :try_start_8
    iget-object v5, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v5, v5, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {v5, v4, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    goto :goto_12

    :catch_8
    move-exception v0

    const/4 v6, 0x0

    .line 4934
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: update =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 4936
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total updateId continuousIds continuousCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " updateId ="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 4942
    :cond_15
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->continuousSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4943
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4944
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4949
    :cond_16
    :goto_14
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4730
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 4954
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4956
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/PhotoPage$Model;->cleanSelectedItem()V

    .line 4958
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$6000(Lcom/zui/gallery/app/PhotoPage;)V

    .line 4959
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 4961
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->continuousSet:Lcom/zui/gallery/data/MediaSet;

    .line 4962
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 4963
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    .line 4964
    iput-boolean v1, v0, Lcom/zui/gallery/data/MediaItem;->isSelected:Z

    goto :goto_0

    .line 4967
    :cond_0
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->isSavingAll:Z

    if-eqz p1, :cond_1

    .line 4968
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onBackPressed()V

    :cond_1
    const-string p1, "PhotoPage"

    const-string v0, "onPostExecute end"

    .line 4970
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f10022b

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 4730
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 4737
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 4738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->startTime:J

    .line 4739
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    const v1, 0x7f10021d

    invoke-static {v0, v1}, Lcom/zui/gallery/app/PhotoPage;->access$5900(Lcom/zui/gallery/app/PhotoPage;I)V

    return-void
.end method
