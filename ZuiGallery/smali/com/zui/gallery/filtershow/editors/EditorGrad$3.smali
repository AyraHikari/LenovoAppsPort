.class Lcom/zui/gallery/filtershow/editors/EditorGrad$3;
.super Ljava/lang/Object;
.source "EditorGrad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorGrad;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
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

    .line 169
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$3;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->fireRightAction()V

    return-void
.end method
