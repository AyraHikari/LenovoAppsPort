.class Lcom/zui/gallery/ui/ActionModeHandler$9;
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

.field final synthetic val$VideoIds:Ljava/util/ArrayList;

.field final synthetic val$hasVideoT:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/ActionModeHandler;ZLjava/util/ArrayList;)V
    .locals 0

    .line 1973
    iput-object p1, p0, Lcom/zui/gallery/ui/ActionModeHandler$9;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    iput-boolean p2, p0, Lcom/zui/gallery/ui/ActionModeHandler$9;->val$hasVideoT:Z

    iput-object p3, p0, Lcom/zui/gallery/ui/ActionModeHandler$9;->val$VideoIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1977
    iget-boolean v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$9;->val$hasVideoT:Z

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/zui/gallery/ui/ActionModeHandler$9;->val$VideoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1983
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1984
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    .line 1985
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_trashed"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1987
    iget-object v4, p0, Lcom/zui/gallery/ui/ActionModeHandler$9;->this$0:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-static {v4}, Lcom/zui/gallery/ui/ActionModeHandler;->access$100(Lcom/zui/gallery/ui/ActionModeHandler;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    .line 1988
    invoke-virtual {v4, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v2

    .line 1989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total delete video count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActionModeHandler"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
