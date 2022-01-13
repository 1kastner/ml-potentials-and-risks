
import pandas as pd
import folium


def plot_nyc_polyline(link_points):
    latlons = []
    for latlon in link_points.split(" "):
        lat, lon = latlon.split(",")
        lat, lon = float(lat), float(lon)
        latlons.append((lat, lon))

    m = folium.Map(latlons[0], zoom_start=14)
    folium.features.PolyLine(latlons, weight=8).add_to(m)
    return m


def get_nearest_entry(this_series, key):
    try:
        iloc = this_series.index.get_loc(key, method='nearest', tolerance=pd.Timedelta('10 minutes'))
    except KeyError:
        return None
    return this_series.iloc[iloc]
