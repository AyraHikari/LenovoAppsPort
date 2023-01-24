.class Lcom/zui/gallery/filtershow/editors/EditorColorBorder$1;
.super Ljava/lang/Object;
.source "EditorColorBorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

.field final synthetic val$accessoryViewList:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorColorBorder;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$1;->val$accessoryViewList:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorColorBorder$1;->val$accessoryViewList:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;->access$000(Lcom/zui/gallery/filtershow/editors/EditorColorBorder;Landroid/widget/LinearLayout;)V

    return-void
.end method
