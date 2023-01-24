.class public final Lcom/google/vr/sdk/widgets/video/deps/cu;
.super Lcom/google/vr/sdk/widgets/video/deps/cr;
.source "SpliceNullCommand.java"


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/cu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cu$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cu$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cu;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cr;-><init>()V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
