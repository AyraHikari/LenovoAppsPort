.class Lcom/zui/gallery/filtershow/category/CategoryPanel$16;
.super Ljava/lang/Object;
.source "CategoryPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/category/CategoryPanel;->initAspectVerticalPanel(Landroid/widget/LinearLayout;)V
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

    .line 1178
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 1181
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    const/4 v0, 0x3

    .line 1182
    sput v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropType:I

    .line 1183
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 1184
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    .line 1185
    sget-boolean v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mutiClick:Z

    if-nez v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1187
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    const/16 v1, 0xd

    invoke-static {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$702(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)I

    .line 1188
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V

    .line 1189
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->executeMirrorActionNewFeature(Z)V

    const-string/jumbo p1, "woatxxx"

    const-string v0, "cropImageSelected: hhh"

    .line 1191
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    sget p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    add-int/2addr p1, v2

    sput p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    const-wide/16 v0, 0x190

    .line 1196
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1198
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1200
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mutiClick:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "isleepok"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;->this$0:Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 1202
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    const/4 v0, -0x2

    .line 1203
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->setCropType(I)V

    .line 1204
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->exeCR()V

    :cond_0
    return-void
.end method
