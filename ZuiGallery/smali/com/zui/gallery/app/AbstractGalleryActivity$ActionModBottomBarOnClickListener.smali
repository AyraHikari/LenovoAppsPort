.class Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModBottomBarOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 727
    :sswitch_0
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    const v2, 0x7f0800ac

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/ActivityState;->onBottombarClicked(I)V

    .line 729
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->SELECT_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v2, v1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 740
    :sswitch_1
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    const v0, 0x7f0800ab

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/ActivityState;->onBottombarClicked(I)V

    goto :goto_0

    .line 744
    :sswitch_2
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    const v0, 0x7f0800aa

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/ActivityState;->onBottombarClicked(I)V

    goto :goto_0

    .line 734
    :sswitch_3
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    const v2, 0x7f0800a7

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/ActivityState;->onBottombarClicked(I)V

    .line 736
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->SELECT_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v2, v1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto :goto_0

    .line 721
    :sswitch_4
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    const v2, 0x7f0800a6

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/ActivityState;->onBottombarClicked(I)V

    .line 723
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_TO_ALBUM:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v2, v1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto :goto_0

    .line 748
    :sswitch_5
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    const v0, 0x7f0800a5

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/ActivityState;->onBottombarClicked(I)V

    goto :goto_0

    .line 753
    :sswitch_6
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractGalleryActivity$ActionModBottomBarOnClickListener;->this$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->access$100(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object p1

    const v0, 0x7f080053

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/ActivityState;->onBottombarClicked(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080053 -> :sswitch_6
        0x7f0800a5 -> :sswitch_5
        0x7f0800a6 -> :sswitch_4
        0x7f0800a7 -> :sswitch_3
        0x7f0800aa -> :sswitch_2
        0x7f0800ab -> :sswitch_1
        0x7f0800ac -> :sswitch_0
        0x7f08038a -> :sswitch_3
    .end sparse-switch
.end method
