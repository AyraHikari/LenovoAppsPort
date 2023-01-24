.class Lcom/zui/gallery/app/AlbumPage$14;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->addGetContentBottomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 1934
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1937
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1938
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1939
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1940
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumPage;->isMultipleChoice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1942
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1945
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v3, v3, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    .line 1946
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/Path;

    .line 1947
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    .line 1949
    instance-of v5, v4, Lcom/zui/gallery/data/MediaItem;

    if-eqz v5, :cond_0

    .line 1950
    check-cast v4, Lcom/zui/gallery/data/MediaItem;

    .line 1951
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1955
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1956
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1957
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isAppWidget4x2()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1959
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->manualSetData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1961
    :cond_2
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->manualSetData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appWidget4x2 == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zlq"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->moveTaskToBack(Z)Z

    .line 1967
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finishAndRemoveTask()V

    return-void

    .line 1971
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    .line 1973
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1974
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/Path;

    .line 1975
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string p1, "android.intent.extra.STREAM"

    .line 1977
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1978
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1979
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 1980
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$14;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    :cond_5
    return-void
.end method
