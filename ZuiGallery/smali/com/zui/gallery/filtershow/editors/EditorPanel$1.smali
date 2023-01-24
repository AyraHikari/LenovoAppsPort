.class Lcom/zui/gallery/filtershow/editors/EditorPanel$1;
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

    .line 161
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string p1, "cancelTEST"

    const-string v0, "onClick: "

    .line 164
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 165
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    const/4 v1, 0x0

    .line 166
    sput v1, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingX:F

    .line 167
    sput v1, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingY:F

    const/4 v1, 0x1

    .line 168
    sput-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    .line 169
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDrawColor:Z

    .line 170
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    .line 171
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iput v3, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    .line 172
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    const/high16 v4, 0x42700000    # 60.0f

    iput v4, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvoIndex:F

    .line 173
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iput v3, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvos:I

    .line 174
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    .line 175
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    .line 176
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->geometryHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 177
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 178
    iput v3, v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    .line 181
    sget v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 185
    sput-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorCancel:Z

    .line 186
    sput-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorRotationCancel:Z

    .line 189
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->cancelGeometryCurrentFilter()V

    .line 190
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->backToMain()V

    .line 194
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRotationAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    .line 195
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getMirrorAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 198
    sget-boolean v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->isGeometryApplied:Z

    const-string v5, "Gallery_Preference"

    const-string/jumbo v6, "woqvsac"

    if-eqz v3, :cond_0

    const-string v3, "onClick: aaaaa"

    .line 199
    invoke-static {v6, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2, v5, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "geometry_rotation_value"

    .line 201
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "geometry_mirror_value"

    .line 202
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 203
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-static {v2, v3}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->access$000(Lcom/zui/gallery/filtershow/editors/EditorPanel;I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setRotation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    .line 204
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->access$100(Lcom/zui/gallery/filtershow/editors/EditorPanel;I)Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setMirror(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    goto :goto_0

    .line 206
    :cond_0
    sget-boolean v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    if-nez v3, :cond_1

    .line 207
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p1, v4, :cond_3

    .line 208
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRotationAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    .line 209
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getMirrorAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 210
    sget-object v3, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setRotation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    .line 211
    sget-object v3, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setMirror(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    .line 212
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getRotation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result p1

    .line 213
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getMirror()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->ordinal()I

    move-result v1

    .line 214
    invoke-virtual {v2, v5, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "geometry_rotation_value_cancel"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "geometry_mirror_value_cancel"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isModifyPicture()V

    goto :goto_0

    :cond_1
    const-string v0, "onClick: ccccc"

    .line 220
    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setRotation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    .line 222
    sget-object p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setMirror(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    goto :goto_0

    :cond_2
    const-string v0, "onClick: 222"

    .line 227
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;->this$0:Lcom/zui/gallery/filtershow/editors/EditorPanel;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->cancelCurrentFilter()V

    .line 229
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->backToMain()V

    :cond_3
    :goto_0
    return-void
.end method
