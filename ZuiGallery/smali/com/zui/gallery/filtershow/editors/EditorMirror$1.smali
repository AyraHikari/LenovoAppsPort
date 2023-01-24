.class Lcom/zui/gallery/filtershow/editors/EditorMirror$1;
.super Ljava/lang/Object;
.source "EditorMirror.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorMirror;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorMirror;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorMirror;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorMirror;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorMirror$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorMirror;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorMirror;->mImageMirror:Lcom/zui/gallery/filtershow/imageshow/ImageMirror;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageMirror;->flip()V

    return-void
.end method
