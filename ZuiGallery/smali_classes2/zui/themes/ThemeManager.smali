.class public Lzui/themes/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/themes/ThemeManager$ReflectServiceManager;
    }
.end annotation


# static fields
.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "com.zui.intent.action.THEME_CHANGED"

.field private static final DEBUG:Z = true

.field public static final EXTRA_CONFIG_FONT_CHANGE:Ljava/lang/String; = "android.intent.configuration.theme.font_changed"

.field public static final SYSTEM_DEFAULT_FONT_NAME:Ljava/lang/String; = "system"

.field public static final SYSTEM_ZUK_FONT_NAME:Ljava/lang/String; = "ZukChinese"

.field private static final TAG:Ljava/lang/String;

.field public static final THEME_URI:Ljava/lang/String; = "content://com.zui.themes"

.field private static mHandler:Landroid/os/Handler;

.field private static sInstance:Lzui/themes/ThemeManager;

.field private static sService:Lzui/themes/IThemeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lzui/themes/ThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "ThemeManager constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lzui/themes/ThemeManager;->getService()Lzui/themes/IThemeService;

    move-result-object v0

    sput-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.zui.theme"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    if-nez p1, :cond_0

    .line 58
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get ThemeManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lzui/themes/ThemeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lzui/themes/ThemeManager;
    .locals 1

    .line 66
    sget-object v0, Lzui/themes/ThemeManager;->sInstance:Lzui/themes/ThemeManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lzui/themes/ThemeManager;

    invoke-direct {v0, p0}, Lzui/themes/ThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzui/themes/ThemeManager;->sInstance:Lzui/themes/ThemeManager;

    .line 70
    :cond_0
    sget-object p0, Lzui/themes/ThemeManager;->sInstance:Lzui/themes/ThemeManager;

    return-object p0
.end method

.method public static getService()Lzui/themes/IThemeService;
    .locals 4

    .line 77
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService:sService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    if-eqz v0, :cond_0

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lzui/themes/ThemeManager$ReflectServiceManager;

    invoke-direct {v0}, Lzui/themes/ThemeManager$ReflectServiceManager;-><init>()V

    const-string v0, "zuithemes"

    .line 82
    invoke-static {v0}, Lzui/themes/ThemeManager$ReflectServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    sget-object v1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService:b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 85
    invoke-static {v0}, Lzui/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lzui/themes/IThemeService;

    move-result-object v0

    sput-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public changeSystemFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 99
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSystemFont:font Path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1, p2}, Lzui/themes/IThemeService;->changeSystemFont(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string p2, "sService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 104
    sget-object p2, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "Unable to change system font"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public changeThemeIcons(Ljava/lang/String;)V
    .locals 3

    .line 193
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeThemeIcons:themeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 198
    :cond_0
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->changeThemeIcons(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 200
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to change theme icon"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public convertFileNameToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 246
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->convertFileNameToUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 250
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 248
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to convert file name to uri string"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public enableOverlayPackages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    .line 279
    :cond_1
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->enableOverlays(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 281
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to enableOverlayPackages "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public enableThemeOverlays(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 311
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 314
    :cond_0
    sget-object v1, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v1, p1}, Lzui/themes/IThemeService;->enableThemeOverlays(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 316
    sget-object v1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to setOverlayPackageEnabled"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public enableThemeOverlaysWithCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 375
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1, p2}, Lzui/themes/IThemeService;->enableThemeOverlaysWithCategory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 377
    sget-object p2, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "Unable to getThemeDisplayName failed!"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getCurrentTheme()Ljava/lang/String;
    .locals 3

    .line 131
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0}, Lzui/themes/IThemeService;->getCurrentTheme()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :catch_0
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "sService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 133
    sget-object v1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get current theme"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledTheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 389
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->getEnabledTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 391
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to getThemeDisplayName failed!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPreviewImagesList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->getPreviewImagesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 217
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 215
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get preview images list"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreviewImagesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 178
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->getPreviewImagesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 182
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 180
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get preview images path"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSystemFont()Ljava/lang/String;
    .locals 3

    .line 116
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0}, Lzui/themes/IThemeService;->getSystemFont()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "sService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 118
    sget-object v1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get system font"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 345
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->getThemeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 347
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to getThemeDisplayName failed!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getThemeOverlaysList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->getThemeOverlaysList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 406
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to getThemeDisplayName failed!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getThemesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0}, Lzui/themes/IThemeService;->getThemesList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "sService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 148
    sget-object v1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get themes list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpapersList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->getWallpapersList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 233
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 231
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get preview images list"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWallpapersPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 162
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1}, Lzui/themes/IThemeService;->getWallpapersPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 166
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "sService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 164
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get wallpaper path"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isOverlayEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 330
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1, p2}, Lzui/themes/IThemeService;->isOverlayEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    sget-object p2, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "Unable to isOverlayEnabled"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadPreInstalledResources()V
    .locals 3

    .line 260
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0}, Lzui/themes/IThemeService;->loadPreInstalledResources()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    sget-object v0, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "sService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 262
    sget-object v1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setOverlayPackageEnabled(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 295
    :cond_0
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1, p2}, Lzui/themes/IThemeService;->setOverlayEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    sget-object p1, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string p2, "sService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 297
    sget-object p2, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string v0, "Unable to setOverlayPackageEnabled "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateMultiThemeInfo(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 361
    :try_start_0
    sget-object v0, Lzui/themes/ThemeManager;->sService:Lzui/themes/IThemeService;

    invoke-interface {v0, p1, p2, p3}, Lzui/themes/IThemeService;->updateMultiThemeInfo(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 363
    sget-object p2, Lzui/themes/ThemeManager;->TAG:Ljava/lang/String;

    const-string p3, "Unable to getThemeDisplayName failed!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
