.class Lcom/zui/gallery/filtershow/category/MainPanel$12;
.super Ljava/lang/Object;
.source "MainPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/MainPanel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/MainPanel;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/MainPanel;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$12;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 448
    sget-wide v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShareTime:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x1

    .line 449
    sput-wide v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShareTime:J

    .line 451
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/MainPanel$12;->this$0:Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 452
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setSaveFromShar(Landroid/content/Context;Z)V

    .line 453
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->sharePic()V

    :cond_0
    return-void
.end method
