.class public Lcom/google/vr/sdk/widgets/common/FullScreenDialog;
.super Landroid/app/Dialog;
.source "FullScreenDialog.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dialogContent:Landroid/view/ViewGroup;

.field private fullscreenMode:Lcom/google/vr/cardboard/FullscreenMode;

.field private final innerWidgetView:Landroid/view/View;

.field private innerWidgetViewParent:Landroid/view/ViewGroup;

.field private renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "innerWidgetView",
            "renderer"
        }
    .end annotation

    const v0, 0x103000a

    .line 38
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetView:Landroid/view/View;

    .line 44
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    .line 45
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->dialogContent:Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 3

    .line 51
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onViewDetach()V

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetViewParent:Landroid/view/ViewGroup;

    .line 59
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->dialogContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onViewDetach()V

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->dialogContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetViewParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->innerWidgetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 82
    new-instance v0, Lcom/google/vr/cardboard/FullscreenMode;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/FullscreenMode;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->fullscreenMode:Lcom/google/vr/cardboard/FullscreenMode;

    .line 83
    invoke-virtual {v0}, Lcom/google/vr/cardboard/FullscreenMode;->goFullscreen()V

    return-void
.end method
