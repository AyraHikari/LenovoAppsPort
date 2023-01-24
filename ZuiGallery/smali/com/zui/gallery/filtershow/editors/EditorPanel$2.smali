.class Lcom/zui/gallery/filtershow/editors/EditorPanel$2;
.super Ljava/lang/Object;
.source "EditorPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/editors/EditorPanel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorPanel;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: begin... "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "shenrucl"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 309
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    const/4 v0, 0x0

    .line 310
    sput v0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingX:F

    .line 311
    sput v0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingY:F

    const/4 v0, 0x1

    .line 312
    sput-boolean v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    .line 313
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDrawColor:Z

    .line 314
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    .line 315
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    iput v2, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    .line 316
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    const/high16 v3, 0x42700000    # 60.0f

    iput v3, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvoIndex:F

    .line 317
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    iput v2, v1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvos:I

    .line 318
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    .line 319
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    .line 323
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 324
    iput v2, v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    .line 326
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$2;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/editors/Editor;->finalApplyCalled()V

    .line 328
    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 329
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isGeometryApplied:Z

    .line 330
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRotationAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    .line 331
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getMirrorAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 333
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getRotation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v0

    .line 334
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getMirror()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->ordinal()I

    move-result v2

    const-string v3, "Gallery_Preference"

    .line 335
    invoke-virtual {v1, v3, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 336
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "geometry_rotation_value"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "geometry_mirror_value"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isModifyPicture()V

    .line 341
    :cond_0
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->backToMain()V

    return-void
.end method
