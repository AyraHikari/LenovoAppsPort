.class public Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IObjectWrapper.java"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IObjectWrapper"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.library.api.IObjectWrapper"

    .line 22
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.library.api.IObjectWrapper"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
