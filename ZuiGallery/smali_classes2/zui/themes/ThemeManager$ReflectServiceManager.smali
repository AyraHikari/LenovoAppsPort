.class Lzui/themes/ThemeManager$ReflectServiceManager;
.super Lzui/util/ReflectClass;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/themes/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectServiceManager"
.end annotation


# static fields
.field private static mInstance:Lzui/themes/ThemeManager$ReflectServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Lzui/themes/ThemeManager$ReflectServiceManager;

    invoke-direct {v0}, Lzui/themes/ThemeManager$ReflectServiceManager;-><init>()V

    sput-object v0, Lzui/themes/ThemeManager$ReflectServiceManager;->mInstance:Lzui/themes/ThemeManager$ReflectServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.os.ServiceManager"

    .line 415
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    .line 424
    sget-object v0, Lzui/themes/ThemeManager$ReflectServiceManager;->mInstance:Lzui/themes/ThemeManager$ReflectServiceManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "getService"

    invoke-virtual {v0, p0, v2, v3, v1}, Lzui/themes/ThemeManager$ReflectServiceManager;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 420
    sget-object v0, Lzui/themes/ThemeManager$ReflectServiceManager;->mInstance:Lzui/themes/ThemeManager$ReflectServiceManager;

    iput-object p1, v0, Lzui/themes/ThemeManager$ReflectServiceManager;->mRealObject:Ljava/lang/Object;

    return-void
.end method
