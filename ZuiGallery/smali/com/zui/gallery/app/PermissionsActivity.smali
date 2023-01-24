.class public Lcom/zui/gallery/app/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static final REQUEST_PERMISSION:I = 0x1

.field private static final URI_PACKAGE:Ljava/lang/String; = "package:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/PermissionsActivity;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PermissionsActivity;->handleResult(I)V

    return-void
.end method

.method private handleResult(I)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/zui/gallery/app/PermissionsActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PermissionsActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/zui/gallery/app/PermissionsActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/PermissionsActivity;->finishAffinity()V

    :goto_0
    return-void
.end method

.method private static lockCurrentOrientation(Landroid/app/Activity;)V
    .locals 2

    const-string/jumbo v0, "window"

    .line 104
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 119
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private popUpPermisionsDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 72
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/zui/gallery/app/PermissionsActivity$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/PermissionsActivity$2;-><init>(Lcom/zui/gallery/app/PermissionsActivity;)V

    const v1, 0x7f10004b

    .line 73
    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/zui/gallery/app/PermissionsActivity$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/PermissionsActivity$1;-><init>(Lcom/zui/gallery/app/PermissionsActivity;)V

    const v1, 0x7f10010e

    .line 83
    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/zui/gallery/app/PermissionsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/app/PermissionsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v1, v0

    .line 52
    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_2

    .line 53
    aget-object v1, p2, p1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/PermissionsActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    aget v2, p3, p1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const p1, 0x7f1001d4

    .line 61
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1001d3

    .line 62
    invoke-virtual {p0, p2}, Lcom/zui/gallery/app/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/PermissionsActivity;->popUpPermisionsDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PermissionsActivity;->handleResult(I)V

    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 37
    invoke-static {p0}, Lcom/zui/gallery/app/PermissionsActivity;->lockCurrentOrientation(Landroid/app/Activity;)V

    .line 38
    invoke-static {p0}, Lcom/zui/gallery/app/PermissionsManager;->getDeniedPermissions(Landroid/app/Activity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/PermissionsActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PermissionsActivity;->handleResult(I)V

    :goto_0
    return-void
.end method
