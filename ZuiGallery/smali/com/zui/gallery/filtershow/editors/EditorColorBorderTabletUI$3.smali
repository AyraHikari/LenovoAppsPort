.class Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;
.super Ljava/lang/Object;
.source "EditorColorBorderTabletUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;->setupColor(Landroid/widget/LinearLayout;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

.field final synthetic val$ctls:Landroid/widget/LinearLayout;

.field final synthetic val$pick:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;->val$ctls:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;->val$pick:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 158
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;->val$ctls:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;->val$ctls:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorderTabletUI$3;->val$pick:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
