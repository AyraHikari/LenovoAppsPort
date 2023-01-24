.class Lcom/zui/gallery/filtershow/editors/EditorVignette$2;
.super Ljava/lang/Object;
.source "EditorVignette.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorVignette;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorVignette;

.field final synthetic val$popupMenu:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorVignette;Landroid/widget/PopupMenu;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorVignette;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 177
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorVignette;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorVignette;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorVignette$2;->val$popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->onShowMenu(Landroid/widget/PopupMenu;)V

    return-void
.end method
