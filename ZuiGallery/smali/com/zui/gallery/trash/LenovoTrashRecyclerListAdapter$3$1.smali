.class Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;
.super Ljava/lang/Object;
.source "LenovoTrashRecyclerListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;

.field final synthetic val$ld:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;->val$ld:Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ld!=null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;->val$ld:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "testwawa"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$3$1;->val$ld:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
