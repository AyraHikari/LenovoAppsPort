.class Lcom/zui/gallery/filtershow/editors/EditorGrad$4;
.super Ljava/lang/Object;
.source "EditorGrad.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorGrad;->setUpPopupMenu(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 279
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 280
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$202(Lcom/zui/gallery/filtershow/editors/EditorGrad;I)I

    .line 293
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$202(Lcom/zui/gallery/filtershow/editors/EditorGrad;I)I

    .line 289
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$202(Lcom/zui/gallery/filtershow/editors/EditorGrad;I)I

    .line 285
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    .line 296
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$300(Lcom/zui/gallery/filtershow/editors/EditorGrad;Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 297
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->updateSeekBar(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 299
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    .line 300
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$4;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f080183
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
