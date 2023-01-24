.class Lcom/zui/gallery/filtershow/category/CategoryPanel$14;
.super Ljava/lang/Object;
.source "CategoryPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/CategoryPanel;->initAspectPanelHorizontal(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 1128
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    const/4 v0, 0x1

    .line 1129
    sput v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropType:I

    .line 1130
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect4to3Horizontal:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1132
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$702(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)I

    .line 1133
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1134
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 1135
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    .line 1136
    iget-boolean p1, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    if-eqz p1, :cond_1

    const p1, 0x7f08010e

    goto :goto_0

    :cond_1
    const p1, 0x7f08010f

    .line 1137
    :goto_0
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->setCropType(I)V

    .line 1138
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->changeCropAspect(I)V

    .line 1139
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->resaveParamter(Z)V

    const/4 p1, 0x6

    .line 1141
    sput p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->stat:I

    const-string p1, "4:3"

    .line 1142
    sput-object p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panelName:Ljava/lang/String;

    return-void
.end method
