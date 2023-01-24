.class Lcom/zui/gallery/filtershow/editors/EditorCrop$3;
.super Ljava/lang/Object;
.source "EditorCrop.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorCrop;->showPopupMenu(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->changeCropAspect(I)V

    const/4 p1, 0x1

    return p1
.end method
