.class public Lcom/google/vr/cardboard/FullscreenMode;
.super Ljava/lang/Object;
.source "FullscreenMode.java"


# static fields
.field private static final NAVIGATION_BAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/vr/cardboard/FullscreenMode;->window:Landroid/view/Window;

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/FullscreenMode;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setFullscreenModeFlags()V

    return-void
.end method

.method private setFullscreenModeFlags()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/vr/cardboard/FullscreenMode;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setImmersiveStickyModeCompat()V
    .locals 3

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/google/vr/cardboard/FullscreenMode;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/vr/cardboard/FullscreenMode$1;

    invoke-direct {v2, p0, v0}, Lcom/google/vr/cardboard/FullscreenMode$1;-><init>(Lcom/google/vr/cardboard/FullscreenMode;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public goFullscreen()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setFullscreenModeFlags()V

    .line 27
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setImmersiveStickyModeCompat()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/google/vr/cardboard/FullscreenMode;->setFullscreenModeFlags()V

    :cond_0
    return-void
.end method
