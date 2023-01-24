.class Lcom/zui/gallery/filtershow/category/CategoryPanel$10;
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

    .line 1013
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 1016
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    .line 1018
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 1019
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    const/4 v1, 0x3

    .line 1022
    sput v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropType:I

    .line 1023
    sget-boolean v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mutiClick:Z

    if-nez v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1025
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$702(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)I

    .line 1026
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1027
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->executeRotationActionNewFeature(Z)V

    const-string/jumbo p1, "woatxxx"

    const-string v0, "cropImageSelected: ggg"

    .line 1029
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    sget p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    add-int/2addr p1, v2

    sput p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    const-wide/16 v0, 0x190

    .line 1033
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1035
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1037
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 1038
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    const/4 v0, -0x1

    .line 1039
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->setCropType(I)V

    .line 1040
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->exeCR()V

    :cond_0
    const/4 p1, 0x2

    .line 1042
    sput p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->stat:I

    const-string/jumbo p1, "\u65cb\u8f6c"

    .line 1043
    sput-object p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panelName:Ljava/lang/String;

    return-void
.end method
