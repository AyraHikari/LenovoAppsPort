.class Lcom/zui/gallery/filtershow/FilterShowActivity$23;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->saveCutoutValue(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$view2:Landroid/view/View;

.field final synthetic val$view3:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 3837
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view2:Landroid/view/View;

    iput-object p4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view3:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 3840
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3844
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3845
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 3849
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    :cond_2
    const/4 v0, -0x1

    const-string v2, "FilterShowActivity"

    if-eqz v1, :cond_6

    .line 3851
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 3863
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5218\u6d77\u5c4f\u6570\u91cf:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 3865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3866
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3867
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3868
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3869
    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4, v3}, Lcom/zui/gallery/util/GalleryUtils;->setCutout(Landroid/content/Context;Ljava/lang/String;)V

    .line 3870
    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 3871
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusH(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/GalleryUtils;->setStatusHeight(Landroid/content/Context;I)V

    .line 3873
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view2:Landroid/view/View;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view3:Landroid/view/View;

    invoke-static {v0, v3, v4, v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$3300(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    .line 3875
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 3876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5218\u6d77\u5c4f\u533a\u57df\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :goto_2
    const-string/jumbo v1, "\u4e0d\u662f\u5218\u6d77\u5c4f"

    .line 3852
    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "-1|-1|-1|-1"

    .line 3857
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2, v1}, Lcom/zui/gallery/util/GalleryUtils;->setCutout(Landroid/content/Context;Ljava/lang/String;)V

    .line 3858
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 3859
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusH(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/GalleryUtils;->setStatusHeight(Landroid/content/Context;I)V

    .line 3861
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view2:Landroid/view/View;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;->val$view3:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$3300(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    :cond_8
    return-void
.end method
