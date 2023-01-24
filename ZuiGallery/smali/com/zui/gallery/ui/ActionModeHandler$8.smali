.class Lcom/zui/gallery/ui/ActionModeHandler$8;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/ActionModeHandler;->doDeleteForFloatDialog(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/ActionModeHandler;

.field final synthetic val$ImageIds:Ljava/util/ArrayList;

.field final synthetic val$hasImageT:Z

.field final synthetic val$manager:Lcom/zui/gallery/data/DataManager;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;ZLjava/util/ArrayList;JLcom/zui/gallery/data/DataManager;)V
    .locals 0

    .line 1930
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    iput-boolean p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$hasImageT:Z

    iput-object p3, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$ImageIds:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$startTime:J

    iput-object p6, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$manager:Lcom/zui/gallery/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1934
    iget-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$hasImageT:Z

    if-eqz v0, :cond_2

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1937
    iget-object v2, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$ImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1941
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1942
    iget-object v5, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v5}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1944
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x1

    .line 1945
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "is_trashed"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x0

    .line 1950
    invoke-virtual {v5, v4, v6, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1952
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "total delete image count "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  id: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActionModeHandler"

    invoke-static {v5, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete image spend time "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$startTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v3, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$manager:Lcom/zui/gallery/data/DataManager;

    invoke-virtual {v3, v4, v7}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 1955
    iget-object v4, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$manager:Lcom/zui/gallery/data/DataManager;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v4

    .line 1956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    iget-object v5, p0, Lcom/zui/gallery/ui/ActionModeHandler$8;->val$manager:Lcom/zui/gallery/data/DataManager;

    invoke-virtual {v5, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    .line 1958
    instance-of v5, v3, Lcom/zui/gallery/data/MediaItem;

    if-eqz v5, :cond_0

    .line 1959
    check-cast v3, Lcom/zui/gallery/data/MediaItem;

    .line 1960
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1963
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A == uriBuilder == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  pathBuilder == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "xxx"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1966
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshTheDefaultStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
