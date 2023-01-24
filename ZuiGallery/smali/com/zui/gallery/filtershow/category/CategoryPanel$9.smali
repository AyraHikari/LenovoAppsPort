.class Lcom/zui/gallery/filtershow/category/CategoryPanel$9;
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

    .line 980
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    .line 983
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    const/4 v0, 0x3

    .line 984
    sput v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropType:I

    .line 985
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 986
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    .line 987
    sget-boolean v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mutiClick:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v3

    invoke-static {v1, v3, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 989
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$702(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)I

    .line 990
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v1

    invoke-static {p1, v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 991
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->executeMirrorActionNewFeature(Z)V

    const-string/jumbo p1, "woatxxx"

    const-string v0, "cropImageSelected: fff"

    .line 993
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    sget p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    add-int/2addr p1, v2

    sput p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    const-wide/16 v0, 0x190

    .line 998
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1000
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1002
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 1003
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    const/4 v0, -0x2

    .line 1004
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->setCropType(I)V

    .line 1005
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->exeCR()V

    .line 1007
    :cond_0
    sput v2, Lcom/zui/gallery/filtershow/category/CategoryPanel;->stat:I

    const-string/jumbo p1, "\u955c\u50cf"

    .line 1008
    sput-object p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panelName:Ljava/lang/String;

    return-void
.end method
